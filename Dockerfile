FROM python:3

WORKDIR /app

ADD hosts /etc/ansible/hosts

RUN pip install --upgrade pip

RUN pip install ansible

RUN apt-get update

RUN apt-get -y install python3-apt sshpass

ADD ansible/* /app/

CMD ansible-playbook site.yml

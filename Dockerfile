FROM mysql:5.7
MAINTAINER 1090691643@qq.com
COPY my.cnf /etc/mysql/conf.d/mysql.cnf
COPY lecing.sql /tmp
ENV MYSQL_ROOT_PASSWORD Mysql5.7
COPY init.sh /docker-entrypoint-initdb.d
RUN chmod 755 /docker-entrypoint-initdb.d/*.sh 

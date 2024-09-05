FROM httpd:latest
RUN apt update -y
RUN apt install apache2 -y
COPY educational-theory/ /var/www/html/
CMD ["apache2ctl", "-D", "FOREGROUND"]
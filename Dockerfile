FROM php:8.2.7-fpm-bullseye

RUN apt-get update && apt-get install -y \
    git \
    curl \
    zip \
    unzip \
    libpq-dev \
    && docker-php-ext-install pdo_mysql pdo_pgsql mysqli

WORKDIR /var/www
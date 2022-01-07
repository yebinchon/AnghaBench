
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int const* method; } ;
typedef int SSL_METHOD ;
typedef TYPE_1__ SSL ;


 int SSL_ASSERT2 (TYPE_1__*) ;

const SSL_METHOD *SSL_get_ssl_method(SSL *ssl)
{
    SSL_ASSERT2(ssl);

    return ssl->method;
}

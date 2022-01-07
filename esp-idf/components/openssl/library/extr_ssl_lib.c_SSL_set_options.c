
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long options; } ;
typedef TYPE_1__ SSL ;


 int SSL_ASSERT1 (TYPE_1__*) ;

unsigned long SSL_set_options(SSL *ssl, unsigned long op)
{
    SSL_ASSERT1(ssl);

    return ssl->options |= op;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ctx; } ;
typedef int SSL_CTX ;
typedef TYPE_1__ SSL ;


 int SSL_ASSERT2 (TYPE_1__ const*) ;

SSL_CTX *SSL_get_SSL_CTX(const SSL *ssl)
{
    SSL_ASSERT2(ssl);

    return ssl->ctx;
}

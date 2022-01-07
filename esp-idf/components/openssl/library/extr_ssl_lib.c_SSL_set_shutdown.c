
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int shutdown; } ;
typedef TYPE_1__ SSL ;


 int SSL_ASSERT3 (TYPE_1__*) ;

void SSL_set_shutdown(SSL *ssl, int mode)
{
    SSL_ASSERT3(ssl);

    ssl->shutdown = mode;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void (* info_callback ) (TYPE_1__ const*,int,int) ;} ;
typedef TYPE_1__ SSL ;


 int SSL_ASSERT3 (TYPE_1__*) ;

void SSL_set_info_callback(SSL *ssl, void (*cb) (const SSL *ssl, int type, int val))
{
    SSL_ASSERT3(ssl);

    ssl->info_callback = cb;
}

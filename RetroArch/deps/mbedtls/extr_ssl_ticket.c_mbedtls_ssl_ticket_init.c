
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
typedef TYPE_1__ mbedtls_ssl_ticket_context ;


 int mbedtls_mutex_init (int *) ;
 int memset (TYPE_1__*,int ,int) ;

void mbedtls_ssl_ticket_init( mbedtls_ssl_ticket_context *ctx )
{
    memset( ctx, 0, sizeof( mbedtls_ssl_ticket_context ) );




}

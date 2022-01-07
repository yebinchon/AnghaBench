
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int mutex; TYPE_1__* keys; } ;
typedef TYPE_2__ mbedtls_ssl_ticket_context ;
struct TYPE_5__ {int ctx; } ;


 int mbedtls_cipher_free (int *) ;
 int mbedtls_mutex_free (int *) ;
 int mbedtls_zeroize (TYPE_2__*,int) ;

void mbedtls_ssl_ticket_free( mbedtls_ssl_ticket_context *ctx )
{
    mbedtls_cipher_free( &ctx->keys[0].ctx );
    mbedtls_cipher_free( &ctx->keys[1].ctx );





    mbedtls_zeroize( ctx, sizeof( mbedtls_ssl_ticket_context ) );
}

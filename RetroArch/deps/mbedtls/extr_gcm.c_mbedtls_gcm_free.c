
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cipher_ctx; } ;
typedef TYPE_1__ mbedtls_gcm_context ;


 int mbedtls_cipher_free (int *) ;
 int mbedtls_zeroize (TYPE_1__*,int) ;

void mbedtls_gcm_free( mbedtls_gcm_context *ctx )
{
    mbedtls_cipher_free( &ctx->cipher_ctx );
    mbedtls_zeroize( ctx, sizeof( mbedtls_gcm_context ) );
}

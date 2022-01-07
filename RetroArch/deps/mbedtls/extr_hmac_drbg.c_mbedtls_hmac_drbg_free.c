
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int md_ctx; int mutex; } ;
typedef TYPE_1__ mbedtls_hmac_drbg_context ;


 int mbedtls_md_free (int *) ;
 int mbedtls_mutex_free (int *) ;
 int mbedtls_zeroize (TYPE_1__*,int) ;

void mbedtls_hmac_drbg_free( mbedtls_hmac_drbg_context *ctx )
{
    if( ctx == ((void*)0) )
        return;




    mbedtls_md_free( &ctx->md_ctx );
    mbedtls_zeroize( ctx, sizeof( mbedtls_hmac_drbg_context ) );
}

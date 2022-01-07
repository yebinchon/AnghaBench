
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; int hmac_ctx; } ;
typedef TYPE_1__ mbedtls_ssl_cookie_ctx ;


 int mbedtls_md_free (int *) ;
 int mbedtls_mutex_free (int *) ;
 int mbedtls_zeroize (TYPE_1__*,int) ;

void mbedtls_ssl_cookie_free( mbedtls_ssl_cookie_ctx *ctx )
{
    mbedtls_md_free( &ctx->hmac_ctx );





    mbedtls_zeroize( ctx, sizeof( mbedtls_ssl_cookie_ctx ) );
}

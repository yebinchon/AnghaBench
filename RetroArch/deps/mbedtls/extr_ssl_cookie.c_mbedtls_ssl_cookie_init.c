
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; int timeout; scalar_t__ serial; int hmac_ctx; } ;
typedef TYPE_1__ mbedtls_ssl_cookie_ctx ;


 int MBEDTLS_SSL_COOKIE_TIMEOUT ;
 int mbedtls_md_init (int *) ;
 int mbedtls_mutex_init (int *) ;

void mbedtls_ssl_cookie_init( mbedtls_ssl_cookie_ctx *ctx )
{
    mbedtls_md_init( &ctx->hmac_ctx );

    ctx->serial = 0;

    ctx->timeout = MBEDTLS_SSL_COOKIE_TIMEOUT;




}

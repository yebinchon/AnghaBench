
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int info; int buf; } ;
typedef TYPE_1__ mbedtls_pem_context ;


 int mbedtls_free (int ) ;
 int mbedtls_zeroize (TYPE_1__*,int) ;

void mbedtls_pem_free( mbedtls_pem_context *ctx )
{
    mbedtls_free( ctx->buf );
    mbedtls_free( ctx->info );

    mbedtls_zeroize( ctx, sizeof( mbedtls_pem_context ) );
}

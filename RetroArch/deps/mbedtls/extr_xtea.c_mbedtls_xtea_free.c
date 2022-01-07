
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_xtea_context ;


 int mbedtls_zeroize (int *,int) ;

void mbedtls_xtea_free( mbedtls_xtea_context *ctx )
{
    if( ctx == ((void*)0) )
        return;

    mbedtls_zeroize( ctx, sizeof( mbedtls_xtea_context ) );
}

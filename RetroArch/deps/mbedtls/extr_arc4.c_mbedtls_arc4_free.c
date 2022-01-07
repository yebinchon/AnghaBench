
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_arc4_context ;


 int mbedtls_zeroize (int *,int) ;

void mbedtls_arc4_free( mbedtls_arc4_context *ctx )
{
    if( ctx == ((void*)0) )
        return;

    mbedtls_zeroize( ctx, sizeof( mbedtls_arc4_context ) );
}

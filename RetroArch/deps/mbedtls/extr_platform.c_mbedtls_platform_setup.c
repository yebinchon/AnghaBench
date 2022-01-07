
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_platform_context ;



int mbedtls_platform_setup( mbedtls_platform_context *ctx )
{
    (void)ctx;

    return( 0 );
}

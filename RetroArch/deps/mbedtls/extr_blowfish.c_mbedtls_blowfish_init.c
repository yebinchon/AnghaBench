
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_blowfish_context ;


 int memset (int *,int ,int) ;

void mbedtls_blowfish_init( mbedtls_blowfish_context *ctx )
{
    memset( ctx, 0, sizeof( mbedtls_blowfish_context ) );
}

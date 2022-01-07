
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_ecdh_context ;


 int memset (int *,int ,int) ;

void mbedtls_ecdh_init( mbedtls_ecdh_context *ctx )
{
    memset( ctx, 0, sizeof( mbedtls_ecdh_context ) );
}

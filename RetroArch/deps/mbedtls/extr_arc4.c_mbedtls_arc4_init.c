
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_arc4_context ;


 int memset (int *,int ,int) ;

void mbedtls_arc4_init( mbedtls_arc4_context *ctx )
{
    memset( ctx, 0, sizeof( mbedtls_arc4_context ) );
}

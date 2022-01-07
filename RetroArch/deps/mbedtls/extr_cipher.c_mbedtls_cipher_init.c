
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_cipher_context_t ;


 int memset (int *,int ,int) ;

void mbedtls_cipher_init( mbedtls_cipher_context_t *ctx )
{
    memset( ctx, 0, sizeof( mbedtls_cipher_context_t ) );
}

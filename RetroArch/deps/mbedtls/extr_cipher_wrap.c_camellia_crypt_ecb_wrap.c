
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_operation_t ;
typedef int mbedtls_camellia_context ;


 int mbedtls_camellia_crypt_ecb (int *,int ,unsigned char const*,unsigned char*) ;

__attribute__((used)) static int camellia_crypt_ecb_wrap( void *ctx, mbedtls_operation_t operation,
        const unsigned char *input, unsigned char *output )
{
    return mbedtls_camellia_crypt_ecb( (mbedtls_camellia_context *) ctx, operation, input,
                               output );
}

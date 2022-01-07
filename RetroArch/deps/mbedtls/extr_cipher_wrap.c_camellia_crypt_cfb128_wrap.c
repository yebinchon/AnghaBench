
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_operation_t ;
typedef int mbedtls_camellia_context ;


 int mbedtls_camellia_crypt_cfb128 (int *,int ,size_t,size_t*,unsigned char*,unsigned char const*,unsigned char*) ;

__attribute__((used)) static int camellia_crypt_cfb128_wrap( void *ctx, mbedtls_operation_t operation,
        size_t length, size_t *iv_off, unsigned char *iv,
        const unsigned char *input, unsigned char *output )
{
    return mbedtls_camellia_crypt_cfb128( (mbedtls_camellia_context *) ctx, operation, length,
                                  iv_off, iv, input, output );
}

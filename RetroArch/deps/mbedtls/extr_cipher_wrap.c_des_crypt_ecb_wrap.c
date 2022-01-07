
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mbedtls_operation_t ;
typedef int mbedtls_des_context ;


 int mbedtls_des_crypt_ecb (int *,unsigned char const*,unsigned char*) ;

__attribute__((used)) static int des_crypt_ecb_wrap( void *ctx, mbedtls_operation_t operation,
        const unsigned char *input, unsigned char *output )
{
    ((void) operation);
    return mbedtls_des_crypt_ecb( (mbedtls_des_context *) ctx, input, output );
}

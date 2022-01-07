
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_aes_context ;


 int MBEDTLS_AESNI_AES ;
 int MBEDTLS_AES_ENCRYPT ;
 scalar_t__ aes_padlock_ace ;
 int mbedtls_aesni_crypt_ecb (int *,int,unsigned char const*,unsigned char*) ;
 scalar_t__ mbedtls_aesni_has_support (int ) ;
 int mbedtls_internal_aes_decrypt (int *,unsigned char const*,unsigned char*) ;
 int mbedtls_internal_aes_encrypt (int *,unsigned char const*,unsigned char*) ;
 scalar_t__ mbedtls_padlock_xcryptecb (int *,int,unsigned char const*,unsigned char*) ;

int mbedtls_aes_crypt_ecb( mbedtls_aes_context *ctx,
                    int mode,
                    const unsigned char input[16],
                    unsigned char output[16] )
{
    if( mode == MBEDTLS_AES_ENCRYPT )
        return( mbedtls_internal_aes_encrypt( ctx, input, output ) );
    else
        return( mbedtls_internal_aes_decrypt( ctx, input, output ) );
}

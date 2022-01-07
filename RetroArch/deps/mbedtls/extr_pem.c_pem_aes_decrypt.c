
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_aes_context ;


 int MBEDTLS_AES_DECRYPT ;
 int mbedtls_aes_crypt_cbc (int *,int ,size_t,unsigned char*,unsigned char*,unsigned char*) ;
 int mbedtls_aes_free (int *) ;
 int mbedtls_aes_init (int *) ;
 int mbedtls_aes_setkey_dec (int *,unsigned char*,unsigned int) ;
 int mbedtls_zeroize (unsigned char*,unsigned int) ;
 int pem_pbkdf1 (unsigned char*,unsigned int,unsigned char*,unsigned char const*,size_t) ;

__attribute__((used)) static void pem_aes_decrypt( unsigned char aes_iv[16], unsigned int keylen,
                               unsigned char *buf, size_t buflen,
                               const unsigned char *pwd, size_t pwdlen )
{
    mbedtls_aes_context aes_ctx;
    unsigned char aes_key[32];

    mbedtls_aes_init( &aes_ctx );

    pem_pbkdf1( aes_key, keylen, aes_iv, pwd, pwdlen );

    mbedtls_aes_setkey_dec( &aes_ctx, aes_key, keylen * 8 );
    mbedtls_aes_crypt_cbc( &aes_ctx, MBEDTLS_AES_DECRYPT, buflen,
                     aes_iv, buf, buf );

    mbedtls_aes_free( &aes_ctx );
    mbedtls_zeroize( aes_key, keylen );
}

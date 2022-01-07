
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_des3_context ;


 int MBEDTLS_DES_DECRYPT ;
 int mbedtls_des3_crypt_cbc (int *,int ,size_t,unsigned char*,unsigned char*,unsigned char*) ;
 int mbedtls_des3_free (int *) ;
 int mbedtls_des3_init (int *) ;
 int mbedtls_des3_set3key_dec (int *,unsigned char*) ;
 int mbedtls_zeroize (unsigned char*,int) ;
 int pem_pbkdf1 (unsigned char*,int,unsigned char*,unsigned char const*,size_t) ;

__attribute__((used)) static void pem_des3_decrypt( unsigned char des3_iv[8],
                               unsigned char *buf, size_t buflen,
                               const unsigned char *pwd, size_t pwdlen )
{
    mbedtls_des3_context des3_ctx;
    unsigned char des3_key[24];

    mbedtls_des3_init( &des3_ctx );

    pem_pbkdf1( des3_key, 24, des3_iv, pwd, pwdlen );

    mbedtls_des3_set3key_dec( &des3_ctx, des3_key );
    mbedtls_des3_crypt_cbc( &des3_ctx, MBEDTLS_DES_DECRYPT, buflen,
                     des3_iv, buf, buf );

    mbedtls_des3_free( &des3_ctx );
    mbedtls_zeroize( des3_key, 24 );
}

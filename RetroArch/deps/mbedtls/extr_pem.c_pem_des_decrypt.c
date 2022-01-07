
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_des_context ;


 int MBEDTLS_DES_DECRYPT ;
 int mbedtls_des_crypt_cbc (int *,int ,size_t,unsigned char*,unsigned char*,unsigned char*) ;
 int mbedtls_des_free (int *) ;
 int mbedtls_des_init (int *) ;
 int mbedtls_des_setkey_dec (int *,unsigned char*) ;
 int mbedtls_zeroize (unsigned char*,int) ;
 int pem_pbkdf1 (unsigned char*,int,unsigned char*,unsigned char const*,size_t) ;

__attribute__((used)) static void pem_des_decrypt( unsigned char des_iv[8],
                               unsigned char *buf, size_t buflen,
                               const unsigned char *pwd, size_t pwdlen )
{
    mbedtls_des_context des_ctx;
    unsigned char des_key[8];

    mbedtls_des_init( &des_ctx );

    pem_pbkdf1( des_key, 8, des_iv, pwd, pwdlen );

    mbedtls_des_setkey_dec( &des_ctx, des_key );
    mbedtls_des_crypt_cbc( &des_ctx, MBEDTLS_DES_DECRYPT, buflen,
                     des_iv, buf, buf );

    mbedtls_des_free( &des_ctx );
    mbedtls_zeroize( des_key, 8 );
}

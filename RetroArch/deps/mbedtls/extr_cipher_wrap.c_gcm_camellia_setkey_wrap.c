
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_gcm_context ;


 int MBEDTLS_CIPHER_ID_CAMELLIA ;
 int mbedtls_gcm_setkey (int *,int ,unsigned char const*,unsigned int) ;

__attribute__((used)) static int gcm_camellia_setkey_wrap( void *ctx, const unsigned char *key,
                                     unsigned int key_bitlen )
{
    return mbedtls_gcm_setkey( (mbedtls_gcm_context *) ctx, MBEDTLS_CIPHER_ID_CAMELLIA,
                     key, key_bitlen );
}

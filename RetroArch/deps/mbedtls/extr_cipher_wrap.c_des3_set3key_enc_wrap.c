
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_des3_context ;


 int mbedtls_des3_set3key_enc (int *,unsigned char const*) ;

__attribute__((used)) static int des3_set3key_enc_wrap( void *ctx, const unsigned char *key,
                                  unsigned int key_bitlen )
{
    ((void) key_bitlen);

    return mbedtls_des3_set3key_enc( (mbedtls_des3_context *) ctx, key );
}

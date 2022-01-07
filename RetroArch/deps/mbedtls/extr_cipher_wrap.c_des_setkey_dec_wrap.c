
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_des_context ;


 int mbedtls_des_setkey_dec (int *,unsigned char const*) ;

__attribute__((used)) static int des_setkey_dec_wrap( void *ctx, const unsigned char *key,
                                unsigned int key_bitlen )
{
    ((void) key_bitlen);

    return mbedtls_des_setkey_dec( (mbedtls_des_context *) ctx, key );
}

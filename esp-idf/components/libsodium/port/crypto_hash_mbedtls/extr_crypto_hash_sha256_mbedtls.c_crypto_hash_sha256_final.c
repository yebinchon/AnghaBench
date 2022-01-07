
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_sha256_context ;
typedef int crypto_hash_sha256_state ;


 int mbedtls_sha256_finish_ret (int *,unsigned char*) ;
 int sha256_libsodium_to_mbedtls (int *,int *) ;

int
crypto_hash_sha256_final(crypto_hash_sha256_state *state, unsigned char *out)
{
    mbedtls_sha256_context ctx;
    sha256_libsodium_to_mbedtls(&ctx, state);
    return mbedtls_sha256_finish_ret(&ctx, out);
}

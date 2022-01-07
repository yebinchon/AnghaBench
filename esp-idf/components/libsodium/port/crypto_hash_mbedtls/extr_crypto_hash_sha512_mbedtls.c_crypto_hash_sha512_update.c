
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_sha512_context ;
typedef int crypto_hash_sha512_state ;


 int mbedtls_sha512_update_ret (int *,unsigned char const*,unsigned long long) ;
 int sha512_libsodium_to_mbedtls (int *,int *) ;
 int sha512_mbedtls_to_libsodium (int *,int *) ;

int
crypto_hash_sha512_update(crypto_hash_sha512_state *state,
                          const unsigned char *in, unsigned long long inlen)
{
    mbedtls_sha512_context ctx;
    sha512_libsodium_to_mbedtls(&ctx, state);
    int ret = mbedtls_sha512_update_ret(&ctx, in, inlen);
    if (ret != 0) {
        return ret;
    }
    sha512_mbedtls_to_libsodium(state, &ctx);
    return 0;
}

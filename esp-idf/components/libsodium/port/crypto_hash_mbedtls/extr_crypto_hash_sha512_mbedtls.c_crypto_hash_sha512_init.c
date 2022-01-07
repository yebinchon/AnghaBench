
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_sha512_context ;
typedef int crypto_hash_sha512_state ;


 int mbedtls_sha512_init (int *) ;
 int mbedtls_sha512_starts_ret (int *,int ) ;
 int sha512_mbedtls_to_libsodium (int *,int *) ;

int
crypto_hash_sha512_init(crypto_hash_sha512_state *state)
{
    mbedtls_sha512_context ctx;
    mbedtls_sha512_init(&ctx);
    int ret = mbedtls_sha512_starts_ret(&ctx, 0);
    if (ret != 0) {
        return ret;
    }
    sha512_mbedtls_to_libsodium(state, &ctx);
    return 0;
}

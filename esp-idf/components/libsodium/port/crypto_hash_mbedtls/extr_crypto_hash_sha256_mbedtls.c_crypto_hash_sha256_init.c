
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_sha256_context ;
typedef int crypto_hash_sha256_state ;


 int mbedtls_sha256_init (int *) ;
 int mbedtls_sha256_starts_ret (int *,int ) ;
 int sha256_mbedtls_to_libsodium (int *,int *) ;

int
crypto_hash_sha256_init(crypto_hash_sha256_state *state)
{
    mbedtls_sha256_context ctx;
    mbedtls_sha256_init(&ctx);
    int ret = mbedtls_sha256_starts_ret(&ctx, 0);
    if (ret != 0) {
        return ret;
    }
    sha256_mbedtls_to_libsodium(state, &ctx);
    return 0;
}

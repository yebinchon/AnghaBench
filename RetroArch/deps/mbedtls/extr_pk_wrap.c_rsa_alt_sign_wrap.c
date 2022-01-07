
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t (* key_len_func ) (int ) ;int (* sign_func ) (int ,int (*) (void*,unsigned char*,size_t),void*,int ,int ,unsigned int,unsigned char const*,unsigned char*) ;int key; } ;
typedef TYPE_1__ mbedtls_rsa_alt_context ;
typedef int mbedtls_md_type_t ;


 int MBEDTLS_ERR_PK_BAD_INPUT_DATA ;
 int MBEDTLS_RSA_PRIVATE ;
 size_t UINT_MAX ;
 size_t stub1 (int ) ;
 int stub2 (int ,int (*) (void*,unsigned char*,size_t),void*,int ,int ,unsigned int,unsigned char const*,unsigned char*) ;

__attribute__((used)) static int rsa_alt_sign_wrap( void *ctx, mbedtls_md_type_t md_alg,
                   const unsigned char *hash, size_t hash_len,
                   unsigned char *sig, size_t *sig_len,
                   int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    mbedtls_rsa_alt_context *rsa_alt = (mbedtls_rsa_alt_context *) ctx;






    *sig_len = rsa_alt->key_len_func( rsa_alt->key );

    return( rsa_alt->sign_func( rsa_alt->key, f_rng, p_rng, MBEDTLS_RSA_PRIVATE,
                md_alg, (unsigned int) hash_len, hash, sig ) );
}

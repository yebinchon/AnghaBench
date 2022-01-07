
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; } ;
typedef TYPE_1__ mbedtls_rsa_context ;
typedef scalar_t__ mbedtls_md_type_t ;


 int MBEDTLS_ERR_PK_BAD_INPUT_DATA ;
 scalar_t__ MBEDTLS_MD_NONE ;
 int MBEDTLS_RSA_PRIVATE ;
 size_t UINT_MAX ;
 int mbedtls_rsa_pkcs1_sign (TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*,int ,scalar_t__,unsigned int,unsigned char const*,unsigned char*) ;

__attribute__((used)) static int rsa_sign_wrap( void *ctx, mbedtls_md_type_t md_alg,
                   const unsigned char *hash, size_t hash_len,
                   unsigned char *sig, size_t *sig_len,
                   int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{





    *sig_len = ((mbedtls_rsa_context *) ctx)->len;

    return( mbedtls_rsa_pkcs1_sign( (mbedtls_rsa_context *) ctx, f_rng, p_rng, MBEDTLS_RSA_PRIVATE,
                md_alg, (unsigned int) hash_len, hash, sig ) );
}

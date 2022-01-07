
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int padding; } ;
typedef TYPE_1__ mbedtls_rsa_context ;
typedef int mbedtls_md_type_t ;


 int MBEDTLS_ERR_RSA_INVALID_PADDING ;


 int mbedtls_rsa_rsassa_pkcs1_v15_verify (TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*,int,int ,unsigned int,unsigned char const*,unsigned char const*) ;
 int mbedtls_rsa_rsassa_pss_verify (TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*,int,int ,unsigned int,unsigned char const*,unsigned char const*) ;

int mbedtls_rsa_pkcs1_verify( mbedtls_rsa_context *ctx,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng,
                      int mode,
                      mbedtls_md_type_t md_alg,
                      unsigned int hashlen,
                      const unsigned char *hash,
                      const unsigned char *sig )
{
    switch( ctx->padding )
    {
        default:
            return( MBEDTLS_ERR_RSA_INVALID_PADDING );
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int padding; } ;
typedef TYPE_1__ mbedtls_rsa_context ;


 int MBEDTLS_ERR_RSA_INVALID_PADDING ;


 int mbedtls_rsa_rsaes_oaep_decrypt (TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*,int,int *,int ,size_t*,unsigned char const*,unsigned char*,size_t) ;
 int mbedtls_rsa_rsaes_pkcs1_v15_decrypt (TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*,int,size_t*,unsigned char const*,unsigned char*,size_t) ;

int mbedtls_rsa_pkcs1_decrypt( mbedtls_rsa_context *ctx,
                       int (*f_rng)(void *, unsigned char *, size_t),
                       void *p_rng,
                       int mode, size_t *olen,
                       const unsigned char *input,
                       unsigned char *output,
                       size_t output_max_len)
{
    switch( ctx->padding )
    {
        default:
            return( MBEDTLS_ERR_RSA_INVALID_PADDING );
    }
}

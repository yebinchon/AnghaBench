
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; } ;
typedef TYPE_1__ mbedtls_rsa_context ;


 int MBEDTLS_ERR_RSA_BAD_INPUT_DATA ;
 int MBEDTLS_RSA_PRIVATE ;
 int mbedtls_rsa_pkcs1_decrypt (TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*,int ,size_t*,unsigned char const*,unsigned char*,size_t) ;

__attribute__((used)) static int rsa_decrypt_wrap( void *ctx,
                    const unsigned char *input, size_t ilen,
                    unsigned char *output, size_t *olen, size_t osize,
                    int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    if( ilen != ((mbedtls_rsa_context *) ctx)->len )
        return( MBEDTLS_ERR_RSA_BAD_INPUT_DATA );

    return( mbedtls_rsa_pkcs1_decrypt( (mbedtls_rsa_context *) ctx, f_rng, p_rng,
                MBEDTLS_RSA_PRIVATE, olen, input, output, osize ) );
}

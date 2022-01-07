
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; } ;
typedef TYPE_1__ mbedtls_rsa_context ;


 int MBEDTLS_ERR_RSA_OUTPUT_TOO_LARGE ;
 int MBEDTLS_RSA_PUBLIC ;
 int mbedtls_rsa_pkcs1_encrypt (TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*,int ,size_t,unsigned char const*,unsigned char*) ;

__attribute__((used)) static int rsa_encrypt_wrap( void *ctx,
                    const unsigned char *input, size_t ilen,
                    unsigned char *output, size_t *olen, size_t osize,
                    int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    *olen = ((mbedtls_rsa_context *) ctx)->len;

    if( *olen > osize )
        return( MBEDTLS_ERR_RSA_OUTPUT_TOO_LARGE );

    return( mbedtls_rsa_pkcs1_encrypt( (mbedtls_rsa_context *) ctx,
                f_rng, p_rng, MBEDTLS_RSA_PUBLIC, ilen, input, output ) );
}

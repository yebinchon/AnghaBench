
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t (* key_len_func ) (int ) ;int (* decrypt_func ) (int ,int ,size_t*,unsigned char const*,unsigned char*,size_t) ;int key; } ;
typedef TYPE_1__ mbedtls_rsa_alt_context ;


 int MBEDTLS_ERR_RSA_BAD_INPUT_DATA ;
 int MBEDTLS_RSA_PRIVATE ;
 size_t stub1 (int ) ;
 int stub2 (int ,int ,size_t*,unsigned char const*,unsigned char*,size_t) ;

__attribute__((used)) static int rsa_alt_decrypt_wrap( void *ctx,
                    const unsigned char *input, size_t ilen,
                    unsigned char *output, size_t *olen, size_t osize,
                    int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    mbedtls_rsa_alt_context *rsa_alt = (mbedtls_rsa_alt_context *) ctx;

    ((void) f_rng);
    ((void) p_rng);

    if( ilen != rsa_alt->key_len_func( rsa_alt->key ) )
        return( MBEDTLS_ERR_RSA_BAD_INPUT_DATA );

    return( rsa_alt->decrypt_func( rsa_alt->key,
                MBEDTLS_RSA_PRIVATE, olen, input, output, osize ) );
}

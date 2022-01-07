
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_camellia_context ;


 int mbedtls_camellia_crypt_ctr (int *,size_t,size_t*,unsigned char*,unsigned char*,unsigned char const*,unsigned char*) ;

__attribute__((used)) static int camellia_crypt_ctr_wrap( void *ctx, size_t length, size_t *nc_off,
        unsigned char *nonce_counter, unsigned char *stream_block,
        const unsigned char *input, unsigned char *output )
{
    return mbedtls_camellia_crypt_ctr( (mbedtls_camellia_context *) ctx, length, nc_off,
                               nonce_counter, stream_block, input, output );
}

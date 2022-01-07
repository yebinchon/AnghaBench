
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_blowfish_context ;


 size_t MBEDTLS_BLOWFISH_BLOCKSIZE ;
 int MBEDTLS_BLOWFISH_ENCRYPT ;
 int mbedtls_blowfish_crypt_ecb (int *,int ,unsigned char*,unsigned char*) ;

int mbedtls_blowfish_crypt_ctr( mbedtls_blowfish_context *ctx,
                       size_t length,
                       size_t *nc_off,
                       unsigned char nonce_counter[MBEDTLS_BLOWFISH_BLOCKSIZE],
                       unsigned char stream_block[MBEDTLS_BLOWFISH_BLOCKSIZE],
                       const unsigned char *input,
                       unsigned char *output )
{
    int c, i;
    size_t n = *nc_off;

    while( length-- )
    {
        if( n == 0 ) {
            mbedtls_blowfish_crypt_ecb( ctx, MBEDTLS_BLOWFISH_ENCRYPT, nonce_counter,
                                stream_block );

            for( i = MBEDTLS_BLOWFISH_BLOCKSIZE; i > 0; i-- )
                if( ++nonce_counter[i - 1] != 0 )
                    break;
        }
        c = *input++;
        *output++ = (unsigned char)( c ^ stream_block[n] );

        n = ( n + 1 ) % MBEDTLS_BLOWFISH_BLOCKSIZE;
    }

    *nc_off = n;

    return( 0 );
}

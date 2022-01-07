
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_blowfish_context ;


 size_t MBEDTLS_BLOWFISH_BLOCKSIZE ;
 int MBEDTLS_BLOWFISH_DECRYPT ;
 int MBEDTLS_BLOWFISH_ENCRYPT ;
 int mbedtls_blowfish_crypt_ecb (int *,int ,unsigned char*,unsigned char*) ;

int mbedtls_blowfish_crypt_cfb64( mbedtls_blowfish_context *ctx,
                       int mode,
                       size_t length,
                       size_t *iv_off,
                       unsigned char iv[MBEDTLS_BLOWFISH_BLOCKSIZE],
                       const unsigned char *input,
                       unsigned char *output )
{
    int c;
    size_t n = *iv_off;

    if( mode == MBEDTLS_BLOWFISH_DECRYPT )
    {
        while( length-- )
        {
            if( n == 0 )
                mbedtls_blowfish_crypt_ecb( ctx, MBEDTLS_BLOWFISH_ENCRYPT, iv, iv );

            c = *input++;
            *output++ = (unsigned char)( c ^ iv[n] );
            iv[n] = (unsigned char) c;

            n = ( n + 1 ) % MBEDTLS_BLOWFISH_BLOCKSIZE;
        }
    }
    else
    {
        while( length-- )
        {
            if( n == 0 )
                mbedtls_blowfish_crypt_ecb( ctx, MBEDTLS_BLOWFISH_ENCRYPT, iv, iv );

            iv[n] = *output++ = (unsigned char)( iv[n] ^ *input++ );

            n = ( n + 1 ) % MBEDTLS_BLOWFISH_BLOCKSIZE;
        }
    }

    *iv_off = n;

    return( 0 );
}

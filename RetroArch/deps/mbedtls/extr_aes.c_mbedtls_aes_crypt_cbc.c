
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_aes_context ;


 int MBEDTLS_AES_DECRYPT ;
 int MBEDTLS_ERR_AES_INVALID_INPUT_LENGTH ;
 scalar_t__ aes_padlock_ace ;
 int mbedtls_aes_crypt_ecb (int *,int,unsigned char const*,unsigned char*) ;
 scalar_t__ mbedtls_padlock_xcryptcbc (int *,int,size_t,unsigned char*,unsigned char const*,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;

int mbedtls_aes_crypt_cbc( mbedtls_aes_context *ctx,
                    int mode,
                    size_t length,
                    unsigned char iv[16],
                    const unsigned char *input,
                    unsigned char *output )
{
    int i;
    unsigned char temp[16];

    if( length % 16 )
        return( MBEDTLS_ERR_AES_INVALID_INPUT_LENGTH );
    if( mode == MBEDTLS_AES_DECRYPT )
    {
        while( length > 0 )
        {
            memcpy( temp, input, 16 );
            mbedtls_aes_crypt_ecb( ctx, mode, input, output );

            for( i = 0; i < 16; i++ )
                output[i] = (unsigned char)( output[i] ^ iv[i] );

            memcpy( iv, temp, 16 );

            input += 16;
            output += 16;
            length -= 16;
        }
    }
    else
    {
        while( length > 0 )
        {
            for( i = 0; i < 16; i++ )
                output[i] = (unsigned char)( input[i] ^ iv[i] );

            mbedtls_aes_crypt_ecb( ctx, mode, output, output );
            memcpy( iv, output, 16 );

            input += 16;
            output += 16;
            length -= 16;
        }
    }

    return( 0 );
}

#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_aes_context ;

/* Variables and functions */
 int MBEDTLS_AES_DECRYPT ; 
 int MBEDTLS_ERR_AES_INVALID_INPUT_LENGTH ; 
 scalar_t__ aes_padlock_ace ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,unsigned char const*,unsigned char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,size_t,unsigned char*,unsigned char const*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char const*,int) ; 

int FUNC3( mbedtls_aes_context *ctx,
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

#if defined(MBEDTLS_PADLOCK_C) && defined(MBEDTLS_HAVE_X86)
    if( aes_padlock_ace )
    {
        if( mbedtls_padlock_xcryptcbc( ctx, mode, length, iv, input, output ) == 0 )
            return( 0 );

        // If padlock data misaligned, we just fall back to
        // unaccelerated mode
        //
    }
#endif

    if( mode == MBEDTLS_AES_DECRYPT )
    {
        while( length > 0 )
        {
            FUNC2( temp, input, 16 );
            FUNC0( ctx, mode, input, output );

            for( i = 0; i < 16; i++ )
                output[i] = (unsigned char)( output[i] ^ iv[i] );

            FUNC2( iv, temp, 16 );

            input  += 16;
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

            FUNC0( ctx, mode, output, output );
            FUNC2( iv, output, 16 );

            input  += 16;
            output += 16;
            length -= 16;
        }
    }

    return( 0 );
}
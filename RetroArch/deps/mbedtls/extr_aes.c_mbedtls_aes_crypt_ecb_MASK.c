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
 int /*<<< orphan*/  MBEDTLS_AESNI_AES ; 
 int MBEDTLS_AES_ENCRYPT ; 
 scalar_t__ aes_padlock_ace ; 
 int FUNC0 (int /*<<< orphan*/ *,int,unsigned char const*,unsigned char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char const*,unsigned char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char const*,unsigned char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,unsigned char const*,unsigned char*) ; 

int FUNC5( mbedtls_aes_context *ctx,
                    int mode,
                    const unsigned char input[16],
                    unsigned char output[16] )
{
#if defined(MBEDTLS_AESNI_C) && defined(MBEDTLS_HAVE_X86_64)
    if( mbedtls_aesni_has_support( MBEDTLS_AESNI_AES ) )
        return( mbedtls_aesni_crypt_ecb( ctx, mode, input, output ) );
#endif

#if defined(MBEDTLS_PADLOCK_C) && defined(MBEDTLS_HAVE_X86)
    if( aes_padlock_ace )
    {
        if( mbedtls_padlock_xcryptecb( ctx, mode, input, output ) == 0 )
            return( 0 );

        // If padlock data misaligned, we just fall back to
        // unaccelerated mode
        //
    }
#endif

    if( mode == MBEDTLS_AES_ENCRYPT )
        return( FUNC3( ctx, input, output ) );
    else
        return( FUNC2( ctx, input, output ) );
}
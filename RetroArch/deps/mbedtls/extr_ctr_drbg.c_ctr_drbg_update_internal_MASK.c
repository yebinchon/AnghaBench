#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__* counter; int /*<<< orphan*/  aes_ctx; } ;
typedef  TYPE_1__ mbedtls_ctr_drbg_context ;

/* Variables and functions */
 int /*<<< orphan*/  MBEDTLS_AES_ENCRYPT ; 
 int MBEDTLS_CTR_DRBG_BLOCKSIZE ; 
 int /*<<< orphan*/  MBEDTLS_CTR_DRBG_KEYBITS ; 
 int MBEDTLS_CTR_DRBG_KEYSIZE ; 
 int MBEDTLS_CTR_DRBG_SEEDLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4( mbedtls_ctr_drbg_context *ctx,
                              const unsigned char data[MBEDTLS_CTR_DRBG_SEEDLEN] )
{
    unsigned char tmp[MBEDTLS_CTR_DRBG_SEEDLEN];
    unsigned char *p = tmp;
    int i, j;

    FUNC3( tmp, 0, MBEDTLS_CTR_DRBG_SEEDLEN );

    for( j = 0; j < MBEDTLS_CTR_DRBG_SEEDLEN; j += MBEDTLS_CTR_DRBG_BLOCKSIZE )
    {
        /*
         * Increase counter
         */
        for( i = MBEDTLS_CTR_DRBG_BLOCKSIZE; i > 0; i-- )
            if( ++ctx->counter[i - 1] != 0 )
                break;

        /*
         * Crypt counter block
         */
        FUNC0( &ctx->aes_ctx, MBEDTLS_AES_ENCRYPT, ctx->counter, p );

        p += MBEDTLS_CTR_DRBG_BLOCKSIZE;
    }

    for( i = 0; i < MBEDTLS_CTR_DRBG_SEEDLEN; i++ )
        tmp[i] ^= data[i];

    /*
     * Update key and counter
     */
    FUNC1( &ctx->aes_ctx, tmp, MBEDTLS_CTR_DRBG_KEYBITS );
    FUNC2( ctx->counter, tmp + MBEDTLS_CTR_DRBG_KEYSIZE, MBEDTLS_CTR_DRBG_BLOCKSIZE );

    return( 0 );
}
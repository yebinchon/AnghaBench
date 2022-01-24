#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ reseed_counter; scalar_t__ reseed_interval; scalar_t__* counter; int /*<<< orphan*/  aes_ctx; scalar_t__ prediction_resistance; } ;
typedef  TYPE_1__ mbedtls_ctr_drbg_context ;

/* Variables and functions */
 int /*<<< orphan*/  MBEDTLS_AES_ENCRYPT ; 
 int MBEDTLS_CTR_DRBG_BLOCKSIZE ; 
 size_t MBEDTLS_CTR_DRBG_MAX_INPUT ; 
 size_t MBEDTLS_CTR_DRBG_MAX_REQUEST ; 
 int MBEDTLS_CTR_DRBG_SEEDLEN ; 
 int MBEDTLS_ERR_CTR_DRBG_INPUT_TOO_BIG ; 
 int MBEDTLS_ERR_CTR_DRBG_REQUEST_TOO_BIG ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,unsigned char*) ; 
 int FUNC3 (TYPE_1__*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,int) ; 

int FUNC6( void *p_rng,
                              unsigned char *output, size_t output_len,
                              const unsigned char *additional, size_t add_len )
{
    int ret = 0;
    mbedtls_ctr_drbg_context *ctx = (mbedtls_ctr_drbg_context *) p_rng;
    unsigned char add_input[MBEDTLS_CTR_DRBG_SEEDLEN];
    unsigned char *p = output;
    unsigned char tmp[MBEDTLS_CTR_DRBG_BLOCKSIZE];
    int i;
    size_t use_len;

    if( output_len > MBEDTLS_CTR_DRBG_MAX_REQUEST )
        return( MBEDTLS_ERR_CTR_DRBG_REQUEST_TOO_BIG );

    if( add_len > MBEDTLS_CTR_DRBG_MAX_INPUT )
        return( MBEDTLS_ERR_CTR_DRBG_INPUT_TOO_BIG );

    FUNC5( add_input, 0, MBEDTLS_CTR_DRBG_SEEDLEN );

    if( ctx->reseed_counter > ctx->reseed_interval ||
        ctx->prediction_resistance )
    {
        if( ( ret = FUNC3( ctx, additional, add_len ) ) != 0 )
            return( ret );

        add_len = 0;
    }

    if( add_len > 0 )
    {
        FUNC0( add_input, additional, add_len );
        FUNC1( ctx, add_input );
    }

    while( output_len > 0 )
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
        FUNC2( &ctx->aes_ctx, MBEDTLS_AES_ENCRYPT, ctx->counter, tmp );

        use_len = ( output_len > MBEDTLS_CTR_DRBG_BLOCKSIZE ) ? MBEDTLS_CTR_DRBG_BLOCKSIZE :
                                                       output_len;
        /*
         * Copy random block to destination
         */
        FUNC4( p, tmp, use_len );
        p += use_len;
        output_len -= use_len;
    }

    FUNC1( ctx, add_input );

    ctx->reseed_counter++;

    return( 0 );
}
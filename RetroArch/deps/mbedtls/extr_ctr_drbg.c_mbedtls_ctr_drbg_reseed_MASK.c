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
struct TYPE_4__ {int entropy_len; scalar_t__ (* f_entropy ) (int /*<<< orphan*/ ,unsigned char*,int) ;int reseed_counter; int /*<<< orphan*/  p_entropy; } ;
typedef  TYPE_1__ mbedtls_ctr_drbg_context ;

/* Variables and functions */
 int MBEDTLS_CTR_DRBG_MAX_SEED_INPUT ; 
 int MBEDTLS_ERR_CTR_DRBG_ENTROPY_SOURCE_FAILED ; 
 int MBEDTLS_ERR_CTR_DRBG_INPUT_TOO_BIG ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,unsigned char*,int) ; 

int FUNC5( mbedtls_ctr_drbg_context *ctx,
                     const unsigned char *additional, size_t len )
{
    unsigned char seed[MBEDTLS_CTR_DRBG_MAX_SEED_INPUT];
    size_t seedlen = 0;

    if( ctx->entropy_len > MBEDTLS_CTR_DRBG_MAX_SEED_INPUT ||
        len > MBEDTLS_CTR_DRBG_MAX_SEED_INPUT - ctx->entropy_len )
        return( MBEDTLS_ERR_CTR_DRBG_INPUT_TOO_BIG );

    FUNC3( seed, 0, MBEDTLS_CTR_DRBG_MAX_SEED_INPUT );

    /*
     * Gather entropy_len bytes of entropy to seed state
     */
    if( 0 != ctx->f_entropy( ctx->p_entropy, seed,
                             ctx->entropy_len ) )
    {
        return( MBEDTLS_ERR_CTR_DRBG_ENTROPY_SOURCE_FAILED );
    }

    seedlen += ctx->entropy_len;

    /*
     * Add additional data
     */
    if( additional && len )
    {
        FUNC2( seed + seedlen, additional, len );
        seedlen += len;
    }

    /*
     * Reduce to 384 bits
     */
    FUNC0( seed, seed, seedlen );

    /*
     * Update state
     */
    FUNC1( ctx, seed );
    ctx->reseed_counter = 1;

    return( 0 );
}
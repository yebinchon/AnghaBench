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
typedef  int /*<<< orphan*/  mbedtls_ctr_drbg_context ;

/* Variables and functions */
 size_t MBEDTLS_CTR_DRBG_MAX_SEED_INPUT ; 
 int MBEDTLS_CTR_DRBG_SEEDLEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*) ; 

void FUNC2( mbedtls_ctr_drbg_context *ctx,
                      const unsigned char *additional, size_t add_len )
{
    unsigned char add_input[MBEDTLS_CTR_DRBG_SEEDLEN];

    if( add_len > 0 )
    {
        /* MAX_INPUT would be more logical here, but we have to match
         * block_cipher_df()'s limits since we can't propagate errors */
        if( add_len > MBEDTLS_CTR_DRBG_MAX_SEED_INPUT )
            add_len = MBEDTLS_CTR_DRBG_MAX_SEED_INPUT;

        FUNC0( add_input, additional, add_len );
        FUNC1( ctx, add_input );
    }
}
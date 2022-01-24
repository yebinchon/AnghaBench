#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const mbedtls_mpi ;
typedef  int /*<<< orphan*/  mbedtls_md_type_t ;
typedef  int /*<<< orphan*/  mbedtls_md_info_t ;
typedef  int /*<<< orphan*/  mbedtls_hmac_drbg_context ;
struct TYPE_5__ {int nbits; } ;
typedef  TYPE_1__ mbedtls_ecp_group ;

/* Variables and functions */
 int MBEDTLS_ECP_MAX_BYTES ; 
 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,unsigned char const*,size_t) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned char const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mbedtls_hmac_drbg_random ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned char*,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,unsigned char*,size_t) ; 

int FUNC10( mbedtls_ecp_group *grp, mbedtls_mpi *r, mbedtls_mpi *s,
                    const mbedtls_mpi *d, const unsigned char *buf, size_t blen,
                    mbedtls_md_type_t md_alg )
{
    int ret;
    mbedtls_hmac_drbg_context rng_ctx;
    unsigned char data[2 * MBEDTLS_ECP_MAX_BYTES];
    size_t grp_len = ( grp->nbits + 7 ) / 8;
    const mbedtls_md_info_t *md_info;
    mbedtls_mpi h;

    if( ( md_info = FUNC6( md_alg ) ) == NULL )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    FUNC8( &h );
    FUNC4( &rng_ctx );

    /* Use private key and message hash (reduced) to initialize HMAC_DRBG */
    FUNC0( FUNC9( d, data, grp_len ) );
    FUNC0( FUNC1( grp, &h, buf, blen ) );
    FUNC0( FUNC9( &h, data + grp_len, grp_len ) );
    FUNC5( &rng_ctx, md_info, data, 2 * grp_len );

    ret = FUNC2( grp, r, s, d, buf, blen,
                      mbedtls_hmac_drbg_random, &rng_ctx );

cleanup:
    FUNC3( &rng_ctx );
    FUNC7( &h );

    return( ret );
}
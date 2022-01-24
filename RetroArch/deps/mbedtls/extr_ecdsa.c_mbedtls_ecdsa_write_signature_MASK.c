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
typedef  int /*<<< orphan*/  mbedtls_mpi ;
typedef  int /*<<< orphan*/  mbedtls_md_type_t ;
struct TYPE_3__ {int /*<<< orphan*/  d; int /*<<< orphan*/  grp; } ;
typedef  TYPE_1__ mbedtls_ecdsa_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char const*,size_t,int (*) (void*,unsigned char*,size_t),void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6( mbedtls_ecdsa_context *ctx, mbedtls_md_type_t md_alg,
                           const unsigned char *hash, size_t hlen,
                           unsigned char *sig, size_t *slen,
                           int (*f_rng)(void *, unsigned char *, size_t),
                           void *p_rng )
{
    int ret;
    mbedtls_mpi r, s;

    FUNC5( &r );
    FUNC5( &s );

#if defined(MBEDTLS_ECDSA_DETERMINISTIC)
    (void) f_rng;
    (void) p_rng;

    MBEDTLS_MPI_CHK( mbedtls_ecdsa_sign_det( &ctx->grp, &r, &s, &ctx->d,
                             hash, hlen, md_alg ) );
#else
    (void) md_alg;

    FUNC0( FUNC2( &ctx->grp, &r, &s, &ctx->d,
                         hash, hlen, f_rng, p_rng ) );
#endif

    FUNC0( FUNC1( &r, &s, sig, slen ) );

cleanup:
    FUNC4( &r );
    FUNC4( &s );

    return( ret );
}
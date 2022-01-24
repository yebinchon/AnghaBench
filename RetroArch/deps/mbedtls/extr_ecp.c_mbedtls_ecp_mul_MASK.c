#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_mpi ;
struct TYPE_9__ {int /*<<< orphan*/  Z; } ;
typedef  TYPE_1__ mbedtls_ecp_point ;
typedef  int /*<<< orphan*/  mbedtls_ecp_group ;

/* Variables and functions */
 scalar_t__ ECP_TYPE_MONTGOMERY ; 
 scalar_t__ ECP_TYPE_SHORT_WEIERSTRASS ; 
 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*,TYPE_1__ const*,int (*) (void*,unsigned char*,size_t),void*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*,TYPE_1__ const*,int (*) (void*,unsigned char*,size_t),void*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 

int FUNC10( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    int ret = MBEDTLS_ERR_ECP_BAD_INPUT_DATA;
#if defined(MBEDTLS_ECP_INTERNAL_ALT)
    char is_grp_capable = 0;
#endif

    /* Common sanity checks */
    if( FUNC9( &P->Z, 1 ) != 0 )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    if( ( ret = FUNC4( grp, m ) ) != 0 ||
        ( ret = FUNC5( grp, P ) ) != 0 )
        return( ret );

#if defined(MBEDTLS_ECP_INTERNAL_ALT)
    if ( is_grp_capable = mbedtls_internal_ecp_grp_capable( grp )  )
    {
        MBEDTLS_MPI_CHK( mbedtls_internal_ecp_init( grp ) );
    }

#endif /* MBEDTLS_ECP_INTERNAL_ALT */
#if defined(ECP_MONTGOMERY)
    if( ecp_get_type( grp ) == ECP_TYPE_MONTGOMERY )
        ret = ecp_mul_mxz( grp, R, m, P, f_rng, p_rng );

#endif
#if defined(ECP_SHORTWEIERSTRASS)
    if( ecp_get_type( grp ) == ECP_TYPE_SHORT_WEIERSTRASS )
        ret = ecp_mul_comb( grp, R, m, P, f_rng, p_rng );

#endif
#if defined(MBEDTLS_ECP_INTERNAL_ALT)
cleanup:

    if ( is_grp_capable )
    {
        mbedtls_internal_ecp_free( grp );
    }

#endif /* MBEDTLS_ECP_INTERNAL_ALT */
    return( ret );
}
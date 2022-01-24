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
typedef  int /*<<< orphan*/  mbedtls_mpi ;
typedef  int /*<<< orphan*/  mbedtls_ecp_point ;
typedef  int /*<<< orphan*/  mbedtls_ecp_group ;

/* Variables and functions */
 scalar_t__ ECP_TYPE_SHORT_WEIERSTRASS ; 
 int MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             const mbedtls_mpi *n, const mbedtls_ecp_point *Q )
{
    int ret;
    mbedtls_ecp_point mP;
#if defined(MBEDTLS_ECP_INTERNAL_ALT)
    char is_grp_capable = 0;
#endif

    if( FUNC2( grp ) != ECP_TYPE_SHORT_WEIERSTRASS )
        return( MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE );

    FUNC6( &mP );

    FUNC0( FUNC4( grp, &mP, m, P ) );
    FUNC0( FUNC4( grp, R,   n, Q ) );

#if defined(MBEDTLS_ECP_INTERNAL_ALT)
    if (  is_grp_capable = mbedtls_internal_ecp_grp_capable( grp )  )
    {
        MBEDTLS_MPI_CHK( mbedtls_internal_ecp_init( grp ) );
    }

#endif /* MBEDTLS_ECP_INTERNAL_ALT */
    FUNC0( FUNC1( grp, R, &mP, R ) );
    FUNC0( FUNC3( grp, R ) );

cleanup:

#if defined(MBEDTLS_ECP_INTERNAL_ALT)
    if ( is_grp_capable )
    {
        mbedtls_internal_ecp_free( grp );
    }

#endif /* MBEDTLS_ECP_INTERNAL_ALT */
    FUNC5( &mP );

    return( ret );
}
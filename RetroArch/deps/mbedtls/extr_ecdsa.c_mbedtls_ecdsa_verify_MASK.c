#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_3__ ;
typedef  struct TYPE_35__   TYPE_2__ ;
typedef  struct TYPE_34__   TYPE_1__ ;

/* Type definitions */
struct TYPE_34__ {int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ const mbedtls_mpi ;
struct TYPE_35__ {TYPE_1__ const X; } ;
typedef  TYPE_2__ mbedtls_ecp_point ;
struct TYPE_36__ {TYPE_1__ const N; int /*<<< orphan*/  G; } ;
typedef  TYPE_3__ mbedtls_ecp_group ;

/* Variables and functions */
 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ; 
 int MBEDTLS_ERR_ECP_VERIFY_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_1__ const*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__ const*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*,TYPE_1__ const*,int /*<<< orphan*/ *,TYPE_1__ const*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_1__ const*,int) ; 
 scalar_t__ FUNC8 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ; 

int FUNC14( mbedtls_ecp_group *grp,
                  const unsigned char *buf, size_t blen,
                  const mbedtls_ecp_point *Q, const mbedtls_mpi *r, const mbedtls_mpi *s)
{
    int ret;
    mbedtls_mpi e, s_inv, u1, u2;
    mbedtls_ecp_point R;

    FUNC6( &R );
    FUNC10( &e ); FUNC10( &s_inv ); FUNC10( &u1 ); FUNC10( &u2 );

    /* Fail cleanly on curves such as Curve25519 that can't be used for ECDSA */
    if( grp->N.p == NULL )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    /*
     * Step 1: make sure r and s are in range 1..n-1
     */
    if( FUNC7( r, 1 ) < 0 || FUNC8( r, &grp->N ) >= 0 ||
        FUNC7( s, 1 ) < 0 || FUNC8( s, &grp->N ) >= 0 )
    {
        ret = MBEDTLS_ERR_ECP_VERIFY_FAILED;
        goto cleanup;
    }

    /*
     * Additional precaution: make sure Q is valid
     */
    FUNC0( FUNC2( grp, Q ) );

    /*
     * Step 3: derive MPI from hashed message
     */
    FUNC0( FUNC1( grp, &e, buf, blen ) );

    /*
     * Step 4: u1 = e / s mod n, u2 = r / s mod n
     */
    FUNC0( FUNC11( &s_inv, s, &grp->N ) );

    FUNC0( FUNC13( &u1, &e, &s_inv ) );
    FUNC0( FUNC12( &u1, &u1, &grp->N ) );

    FUNC0( FUNC13( &u2, r, &s_inv ) );
    FUNC0( FUNC12( &u2, &u2, &grp->N ) );

    /*
     * Step 5: R = u1 G + u2 Q
     *
     * Since we're not using any secret data, no need to pass a RNG to
     * mbedtls_ecp_mul() for countermesures.
     */
    FUNC0( FUNC4( grp, &R, &u1, &grp->G, &u2, Q ) );

    if( FUNC3( &R ) )
    {
        ret = MBEDTLS_ERR_ECP_VERIFY_FAILED;
        goto cleanup;
    }

    /*
     * Step 6: convert xR to an integer (no-op)
     * Step 7: reduce xR mod n (gives v)
     */
    FUNC0( FUNC12( &R.X, &R.X, &grp->N ) );

    /*
     * Step 8: check if v (that is, R.X) is equal to r
     */
    if( FUNC8( &R.X, r ) != 0 )
    {
        ret = MBEDTLS_ERR_ECP_VERIFY_FAILED;
        goto cleanup;
    }

cleanup:
    FUNC5( &R );
    FUNC9( &e ); FUNC9( &s_inv ); FUNC9( &u1 ); FUNC9( &u2 );

    return( ret );
}
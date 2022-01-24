#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_mpi ;
struct TYPE_8__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
typedef  TYPE_1__ mbedtls_ecp_point ;
struct TYPE_9__ {int /*<<< orphan*/  P; } ;
typedef  TYPE_2__ mbedtls_ecp_group ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__ const*) ; 
 int FUNC3 (TYPE_2__ const*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10( const mbedtls_ecp_group *grp, mbedtls_ecp_point *pt )
{
    int ret;
    mbedtls_mpi Zi, ZZi;

    if( FUNC4( &pt->Z, 0 ) == 0 )
        return( 0 );

#if defined(MBEDTLS_ECP_NORMALIZE_JAC_ALT)
    if ( mbedtls_internal_ecp_grp_capable( grp ) )
    {
        return mbedtls_internal_ecp_normalize_jac( grp, pt );
    }
#endif /* MBEDTLS_ECP_NORMALIZE_JAC_ALT */
    FUNC6( &Zi ); FUNC6( &ZZi );

    /*
     * X = X / Z^2  mod p
     */
    FUNC0( FUNC7( &Zi,      &pt->Z,     &grp->P ) );
    FUNC0( FUNC9( &ZZi,     &Zi,        &Zi     ) ); FUNC1( ZZi );
    FUNC0( FUNC9( &pt->X,   &pt->X,     &ZZi    ) ); FUNC1( pt->X );

    /*
     * Y = Y / Z^3  mod p
     */
    FUNC0( FUNC9( &pt->Y,   &pt->Y,     &ZZi    ) ); FUNC1( pt->Y );
    FUNC0( FUNC9( &pt->Y,   &pt->Y,     &Zi     ) ); FUNC1( pt->Y );

    /*
     * Z = 1
     */
    FUNC0( FUNC8( &pt->Z, 1 ) );

cleanup:

    FUNC5( &Zi ); FUNC5( &ZZi );

    return( ret );
}
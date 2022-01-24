#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_mpi ;
struct TYPE_6__ {int /*<<< orphan*/  X; int /*<<< orphan*/  Y; } ;
typedef  TYPE_1__ mbedtls_ecp_point ;
struct TYPE_8__ {int /*<<< orphan*/ * p; } ;
struct TYPE_7__ {TYPE_3__ B; TYPE_3__ A; int /*<<< orphan*/  P; } ;
typedef  TYPE_2__ mbedtls_ecp_group ;

/* Variables and functions */
 int MBEDTLS_ERR_ECP_INVALID_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11( const mbedtls_ecp_group *grp, const mbedtls_ecp_point *pt )
{
    int ret;
    mbedtls_mpi YY, RHS;

    /* pt coordinates must be normalized for our checks */
    if( FUNC5( &pt->X, 0 ) < 0 ||
        FUNC5( &pt->Y, 0 ) < 0 ||
        FUNC6( &pt->X, &grp->P ) >= 0 ||
        FUNC6( &pt->Y, &grp->P ) >= 0 )
        return( MBEDTLS_ERR_ECP_INVALID_KEY );

    FUNC8( &YY ); FUNC8( &RHS );

    /*
     * YY = Y^2
     * RHS = X (X^2 + A) + B = X^3 + A X + B
     */
    FUNC0( FUNC9( &YY,  &pt->Y,   &pt->Y  ) );  FUNC2( YY  );
    FUNC0( FUNC9( &RHS, &pt->X,   &pt->X  ) );  FUNC2( RHS );

    /* Special case for A = -3 */
    if( grp->A.p == NULL )
    {
        FUNC0( FUNC10( &RHS, &RHS, 3       ) );  FUNC3( RHS );
    }
    else
    {
        FUNC0( FUNC4( &RHS, &RHS, &grp->A ) );  FUNC1( RHS );
    }

    FUNC0( FUNC9( &RHS, &RHS,     &pt->X  ) );  FUNC2( RHS );
    FUNC0( FUNC4( &RHS, &RHS,     &grp->B ) );  FUNC1( RHS );

    if( FUNC6( &YY, &RHS ) != 0 )
        ret = MBEDTLS_ERR_ECP_INVALID_KEY;

cleanup:

    FUNC7( &YY ); FUNC7( &RHS );

    return( ret );
}
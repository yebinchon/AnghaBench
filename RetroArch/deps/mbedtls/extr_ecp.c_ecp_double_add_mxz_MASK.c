#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const mbedtls_mpi ;
struct TYPE_14__ {int /*<<< orphan*/  const Z; int /*<<< orphan*/  const X; } ;
typedef  TYPE_1__ mbedtls_ecp_point ;
struct TYPE_15__ {int /*<<< orphan*/  const A; } ;
typedef  TYPE_2__ mbedtls_ecp_group ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 
 int FUNC4 (TYPE_2__ const*,TYPE_1__*,TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC11( const mbedtls_ecp_group *grp,
                               mbedtls_ecp_point *R, mbedtls_ecp_point *S,
                               const mbedtls_ecp_point *P, const mbedtls_ecp_point *Q,
                               const mbedtls_mpi *d )
{
    int ret;
    mbedtls_mpi A, AA, B, BB, E, C, D, DA, CB;

#if defined(MBEDTLS_ECP_DOUBLE_ADD_MXZ_ALT)
    if ( mbedtls_internal_ecp_grp_capable( grp ) )
    {
        return mbedtls_internal_ecp_double_add_mxz( grp, R, S, P, Q, d );
    }
#endif /* MBEDTLS_ECP_DOUBLE_ADD_MXZ_ALT */

    FUNC8( &A ); FUNC8( &AA ); FUNC8( &B );
    FUNC8( &BB ); FUNC8( &E ); FUNC8( &C );
    FUNC8( &D ); FUNC8( &DA ); FUNC8( &CB );

    FUNC0( FUNC6( &A,    &P->X,   &P->Z ) ); FUNC1( A    );
    FUNC0( FUNC9( &AA,   &A,      &A    ) ); FUNC2( AA   );
    FUNC0( FUNC10( &B,    &P->X,   &P->Z ) ); FUNC3( B    );
    FUNC0( FUNC9( &BB,   &B,      &B    ) ); FUNC2( BB   );
    FUNC0( FUNC10( &E,    &AA,     &BB   ) ); FUNC3( E    );
    FUNC0( FUNC6( &C,    &Q->X,   &Q->Z ) ); FUNC1( C    );
    FUNC0( FUNC10( &D,    &Q->X,   &Q->Z ) ); FUNC3( D    );
    FUNC0( FUNC9( &DA,   &D,      &A    ) ); FUNC2( DA   );
    FUNC0( FUNC9( &CB,   &C,      &B    ) ); FUNC2( CB   );
    FUNC0( FUNC6( &S->X, &DA,     &CB   ) ); FUNC2( S->X );
    FUNC0( FUNC9( &S->X, &S->X,   &S->X ) ); FUNC2( S->X );
    FUNC0( FUNC10( &S->Z, &DA,     &CB   ) ); FUNC3( S->Z );
    FUNC0( FUNC9( &S->Z, &S->Z,   &S->Z ) ); FUNC2( S->Z );
    FUNC0( FUNC9( &S->Z, d,       &S->Z ) ); FUNC2( S->Z );
    FUNC0( FUNC9( &R->X, &AA,     &BB   ) ); FUNC2( R->X );
    FUNC0( FUNC9( &R->Z, &grp->A, &E    ) ); FUNC2( R->Z );
    FUNC0( FUNC6( &R->Z, &BB,     &R->Z ) ); FUNC1( R->Z );
    FUNC0( FUNC9( &R->Z, &E,      &R->Z ) ); FUNC2( R->Z );

cleanup:
    FUNC7( &A ); FUNC7( &AA ); FUNC7( &B );
    FUNC7( &BB ); FUNC7( &E ); FUNC7( &C );
    FUNC7( &D ); FUNC7( &DA ); FUNC7( &CB );

    return( ret );
}
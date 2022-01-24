#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
struct TYPE_31__ {int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ mbedtls_mpi ;
struct TYPE_32__ {TYPE_1__ Z; TYPE_1__ Y; TYPE_1__ X; } ;
typedef  TYPE_2__ mbedtls_ecp_point ;
struct TYPE_33__ {TYPE_1__ A; } ;
typedef  TYPE_3__ mbedtls_ecp_group ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 
 int /*<<< orphan*/  dbl_count ; 
 int FUNC4 (TYPE_3__ const*,TYPE_2__*,TYPE_2__ const*) ; 
 scalar_t__ FUNC5 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC15( const mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
                           const mbedtls_ecp_point *P )
{
    int ret;
    mbedtls_mpi M, S, T, U;

#if defined(MBEDTLS_SELF_TEST)
    dbl_count++;
#endif

#if defined(MBEDTLS_ECP_DOUBLE_JAC_ALT)
    if ( mbedtls_internal_ecp_grp_capable( grp ) )
    {
        return mbedtls_internal_ecp_double_jac( grp, R, P );
    }
#endif /* MBEDTLS_ECP_DOUBLE_JAC_ALT */

    FUNC10( &M ); FUNC10( &S ); FUNC10( &T ); FUNC10( &U );

    /* Special case for A = -3 */
    if( grp->A.p == NULL )
    {
        /* M = 3(X + Z^2)(X - Z^2) */
        FUNC0( FUNC12( &S,  &P->Z,  &P->Z   ) ); FUNC2( S );
        FUNC0( FUNC6( &T,  &P->X,  &S      ) ); FUNC1( T );
        FUNC0( FUNC14( &U,  &P->X,  &S      ) ); FUNC3( U );
        FUNC0( FUNC12( &S,  &T,     &U      ) ); FUNC2( S );
        FUNC0( FUNC11( &M,  &S,     3       ) ); FUNC1( M );
    }
    else
    {
        /* M = 3.X^2 */
        FUNC0( FUNC12( &S,  &P->X,  &P->X   ) ); FUNC2( S );
        FUNC0( FUNC11( &M,  &S,     3       ) ); FUNC1( M );

        /* Optimize away for "koblitz" curves with A = 0 */
        if( FUNC7( &grp->A, 0 ) != 0 )
        {
            /* M += A.Z^4 */
            FUNC0( FUNC12( &S,  &P->Z,  &P->Z   ) ); FUNC2( S );
            FUNC0( FUNC12( &T,  &S,     &S      ) ); FUNC2( T );
            FUNC0( FUNC12( &S,  &T,     &grp->A ) ); FUNC2( S );
            FUNC0( FUNC6( &M,  &M,     &S      ) ); FUNC1( M );
        }
    }

    /* S = 4.X.Y^2 */
    FUNC0( FUNC12( &T,  &P->Y,  &P->Y   ) ); FUNC2( T );
    FUNC0( FUNC13( &T,  1               ) ); FUNC1( T );
    FUNC0( FUNC12( &S,  &P->X,  &T      ) ); FUNC2( S );
    FUNC0( FUNC13( &S,  1               ) ); FUNC1( S );

    /* U = 8.Y^4 */
    FUNC0( FUNC12( &U,  &T,     &T      ) ); FUNC2( U );
    FUNC0( FUNC13( &U,  1               ) ); FUNC1( U );

    /* T = M^2 - 2.S */
    FUNC0( FUNC12( &T,  &M,     &M      ) ); FUNC2( T );
    FUNC0( FUNC14( &T,  &T,     &S      ) ); FUNC3( T );
    FUNC0( FUNC14( &T,  &T,     &S      ) ); FUNC3( T );

    /* S = M(S - T) - U */
    FUNC0( FUNC14( &S,  &S,     &T      ) ); FUNC3( S );
    FUNC0( FUNC12( &S,  &S,     &M      ) ); FUNC2( S );
    FUNC0( FUNC14( &S,  &S,     &U      ) ); FUNC3( S );

    /* U = 2.Y.Z */
    FUNC0( FUNC12( &U,  &P->Y,  &P->Z   ) ); FUNC2( U );
    FUNC0( FUNC13( &U,  1               ) ); FUNC1( U );

    FUNC0( FUNC8( &R->X, &T ) );
    FUNC0( FUNC8( &R->Y, &S ) );
    FUNC0( FUNC8( &R->Z, &U ) );

cleanup:
    FUNC9( &M ); FUNC9( &S ); FUNC9( &T ); FUNC9( &U );

    return( ret );
}
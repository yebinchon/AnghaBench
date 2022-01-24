#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
struct TYPE_30__ {int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ mbedtls_mpi ;
struct TYPE_31__ {TYPE_1__ Z; TYPE_1__ Y; TYPE_1__ X; } ;
typedef  TYPE_2__ mbedtls_ecp_point ;
typedef  int /*<<< orphan*/  mbedtls_ecp_group ;

/* Variables and functions */
 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 
 int /*<<< orphan*/  add_count ; 
 int FUNC4 (int /*<<< orphan*/  const*,TYPE_2__*,TYPE_2__ const*) ; 
 int FUNC5 (TYPE_2__*,TYPE_2__ const*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int FUNC7 (int /*<<< orphan*/  const*,TYPE_2__*,TYPE_2__ const*,TYPE_2__ const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC16( const mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
                          const mbedtls_ecp_point *P, const mbedtls_ecp_point *Q )
{
    int ret;
    mbedtls_mpi T1, T2, T3, T4, X, Y, Z;

#if defined(MBEDTLS_SELF_TEST)
    add_count++;
#endif

#if defined(MBEDTLS_ECP_ADD_MIXED_ALT)
    if ( mbedtls_internal_ecp_grp_capable( grp ) )
    {
        return mbedtls_internal_ecp_add_mixed( grp, R, P, Q );
    }
#endif /* MBEDTLS_ECP_ADD_MIXED_ALT */

    /*
     * Trivial cases: P == 0 or Q == 0 (case 1)
     */
    if( FUNC9( &P->Z, 0 ) == 0 )
        return( FUNC5( R, Q ) );

    if( Q->Z.p != NULL && FUNC9( &Q->Z, 0 ) == 0 )
        return( FUNC5( R, P ) );

    /*
     * Make sure Q coordinates are normalized
     */
    if( Q->Z.p != NULL && FUNC9( &Q->Z, 1 ) != 0 )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    FUNC12( &T1 ); FUNC12( &T2 ); FUNC12( &T3 ); FUNC12( &T4 );
    FUNC12( &X ); FUNC12( &Y ); FUNC12( &Z );

    FUNC0( FUNC14( &T1,  &P->Z,  &P->Z ) );  FUNC2( T1 );
    FUNC0( FUNC14( &T2,  &T1,    &P->Z ) );  FUNC2( T2 );
    FUNC0( FUNC14( &T1,  &T1,    &Q->X ) );  FUNC2( T1 );
    FUNC0( FUNC14( &T2,  &T2,    &Q->Y ) );  FUNC2( T2 );
    FUNC0( FUNC15( &T1,  &T1,    &P->X ) );  FUNC3( T1 );
    FUNC0( FUNC15( &T2,  &T2,    &P->Y ) );  FUNC3( T2 );

    /* Special cases (2) and (3) */
    if( FUNC9( &T1, 0 ) == 0 )
    {
        if( FUNC9( &T2, 0 ) == 0 )
        {
            ret = FUNC4( grp, R, P );
            goto cleanup;
        }
        else
        {
            ret = FUNC6( R );
            goto cleanup;
        }
    }

    FUNC0( FUNC14( &Z,   &P->Z,  &T1   ) );  FUNC2( Z  );
    FUNC0( FUNC14( &T3,  &T1,    &T1   ) );  FUNC2( T3 );
    FUNC0( FUNC14( &T4,  &T3,    &T1   ) );  FUNC2( T4 );
    FUNC0( FUNC14( &T3,  &T3,    &P->X ) );  FUNC2( T3 );
    FUNC0( FUNC13( &T1,  &T3,    2     ) );  FUNC1( T1 );
    FUNC0( FUNC14( &X,   &T2,    &T2   ) );  FUNC2( X  );
    FUNC0( FUNC15( &X,   &X,     &T1   ) );  FUNC3( X  );
    FUNC0( FUNC15( &X,   &X,     &T4   ) );  FUNC3( X  );
    FUNC0( FUNC15( &T3,  &T3,    &X    ) );  FUNC3( T3 );
    FUNC0( FUNC14( &T3,  &T3,    &T2   ) );  FUNC2( T3 );
    FUNC0( FUNC14( &T4,  &T4,    &P->Y ) );  FUNC2( T4 );
    FUNC0( FUNC15( &Y,   &T3,    &T4   ) );  FUNC3( Y  );

    FUNC0( FUNC10( &R->X, &X ) );
    FUNC0( FUNC10( &R->Y, &Y ) );
    FUNC0( FUNC10( &R->Z, &Z ) );

cleanup:

    FUNC11( &T1 ); FUNC11( &T2 ); FUNC11( &T3 ); FUNC11( &T4 );
    FUNC11( &X ); FUNC11( &Y ); FUNC11( &Z );

    return( ret );
}
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
struct TYPE_8__ {int /*<<< orphan*/  Y; int /*<<< orphan*/  X; int /*<<< orphan*/  Z; } ;
typedef  TYPE_1__ mbedtls_ecp_point ;
struct TYPE_9__ {int pbits; int /*<<< orphan*/  P; } ;
typedef  TYPE_2__ mbedtls_ecp_group ;

/* Variables and functions */
 int MBEDTLS_ERR_ECP_RANDOM_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__ const*) ; 
 int FUNC3 (TYPE_2__ const*,TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t,int (*) (void*,unsigned char*,size_t),void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11( const mbedtls_ecp_group *grp, mbedtls_ecp_point *pt,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    int ret;
    mbedtls_mpi l, ll;
    size_t p_size;
    int count = 0;

#if defined(MBEDTLS_ECP_RANDOMIZE_JAC_ALT)
    if ( mbedtls_internal_ecp_grp_capable( grp ) )
    {
        return mbedtls_internal_ecp_randomize_jac( grp, pt, f_rng, p_rng );
    }
#endif /* MBEDTLS_ECP_RANDOMIZE_JAC_ALT */

    p_size = ( grp->pbits + 7 ) / 8;
    FUNC8( &l ); FUNC8( &ll );

    /* Generate l such that 1 < l < p */
    do
    {
        FUNC0( FUNC6( &l, p_size, f_rng, p_rng ) );

        while( FUNC5( &l, &grp->P ) >= 0 )
            FUNC0( FUNC10( &l, 1 ) );

        if( count++ > 10 )
            return( MBEDTLS_ERR_ECP_RANDOM_FAILED );
    }
    while( FUNC4( &l, 1 ) <= 0 );

    /* Z = l * Z */
    FUNC0( FUNC9( &pt->Z,   &pt->Z,     &l  ) ); FUNC1( pt->Z );

    /* X = l^2 * X */
    FUNC0( FUNC9( &ll,      &l,         &l  ) ); FUNC1( ll );
    FUNC0( FUNC9( &pt->X,   &pt->X,     &ll ) ); FUNC1( pt->X );

    /* Y = l^3 * Y */
    FUNC0( FUNC9( &ll,      &ll,        &l  ) ); FUNC1( ll );
    FUNC0( FUNC9( &pt->Y,   &pt->Y,     &ll ) ); FUNC1( pt->Y );

cleanup:
    FUNC7( &l ); FUNC7( &ll );

    return( ret );
}
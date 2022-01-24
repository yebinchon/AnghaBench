#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_mpi ;
struct TYPE_11__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
typedef  TYPE_1__ mbedtls_ecp_point ;
struct TYPE_13__ {int /*<<< orphan*/  n; } ;
struct TYPE_12__ {TYPE_3__ P; } ;
typedef  TYPE_2__ mbedtls_ecp_group ;

/* Variables and functions */
 int MBEDTLS_ERR_ECP_ALLOC_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__ const*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__ const*) ; 
 int FUNC6 (TYPE_2__ const*,TYPE_1__**,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13( const mbedtls_ecp_group *grp,
                                   mbedtls_ecp_point *T[], size_t t_len )
{
    int ret;
    size_t i;
    mbedtls_mpi *c, u, Zi, ZZi;

    if( t_len < 2 )
        return( FUNC2( grp, *T ) );

#if defined(MBEDTLS_ECP_NORMALIZE_JAC_MANY_ALT)
    if ( mbedtls_internal_ecp_grp_capable( grp ) )
    {
        return mbedtls_internal_ecp_normalize_jac_many(grp, T, t_len);
    }
#endif

    if( ( c = (mbedtls_mpi*)FUNC3( t_len, sizeof( mbedtls_mpi ) ) ) == NULL )
        return( MBEDTLS_ERR_ECP_ALLOC_FAILED );

    FUNC9( &u ); FUNC9( &Zi ); FUNC9( &ZZi );

    /*
     * c[i] = Z_0 * ... * Z_i
     */
    FUNC0( FUNC7( &c[0], &T[0]->Z ) );
    for( i = 1; i < t_len; i++ )
    {
        FUNC0( FUNC11( &c[i], &c[i-1], &T[i]->Z ) );
        FUNC1( c[i] );
    }

    /*
     * u = 1 / (Z_0 * ... * Z_n) mod P
     */
    FUNC0( FUNC10( &u, &c[t_len-1], &grp->P ) );

    for( i = t_len - 1; ; i-- )
    {
        /*
         * Zi = 1 / Z_i mod p
         * u = 1 / (Z_0 * ... * Z_i) mod P
         */
        if( i == 0 ) {
            FUNC0( FUNC7( &Zi, &u ) );
        }
        else
        {
            FUNC0( FUNC11( &Zi, &u, &c[i-1]  ) ); FUNC1( Zi );
            FUNC0( FUNC11( &u,  &u, &T[i]->Z ) ); FUNC1( u );
        }

        /*
         * proceed as in normalize()
         */
        FUNC0( FUNC11( &ZZi,     &Zi,      &Zi  ) ); FUNC1( ZZi );
        FUNC0( FUNC11( &T[i]->X, &T[i]->X, &ZZi ) ); FUNC1( T[i]->X );
        FUNC0( FUNC11( &T[i]->Y, &T[i]->Y, &ZZi ) ); FUNC1( T[i]->Y );
        FUNC0( FUNC11( &T[i]->Y, &T[i]->Y, &Zi  ) ); FUNC1( T[i]->Y );

        /*
         * Post-precessing: reclaim some memory by shrinking coordinates
         * - not storing Z (always 1)
         * - shrinking other coordinates, but still keeping the same number of
         *   limbs as P, as otherwise it will too likely be regrown too fast.
         */
        FUNC0( FUNC12( &T[i]->X, grp->P.n ) );
        FUNC0( FUNC12( &T[i]->Y, grp->P.n ) );
        FUNC8( &T[i]->Z );

        if( i == 0 )
            break;
    }

cleanup:

    FUNC8( &u ); FUNC8( &Zi ); FUNC8( &ZZi );
    for( i = 0; i < t_len; i++ )
        FUNC8( &c[i] );
    FUNC4( c );

    return( ret );
}
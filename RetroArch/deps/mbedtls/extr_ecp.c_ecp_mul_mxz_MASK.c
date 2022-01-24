#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_mpi ;
struct TYPE_14__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  X; int /*<<< orphan*/  Y; } ;
typedef  TYPE_1__ mbedtls_ecp_point ;
typedef  int /*<<< orphan*/  mbedtls_ecp_group ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 size_t FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 unsigned char FUNC11 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char) ; 

__attribute__((used)) static int FUNC15( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
                        const mbedtls_mpi *m, const mbedtls_ecp_point *P,
                        int (*f_rng)(void *, unsigned char *, size_t),
                        void *p_rng )
{
    int ret;
    size_t i;
    unsigned char b;
    mbedtls_ecp_point RP;
    mbedtls_mpi PX;

    FUNC7( &RP ); FUNC12( &PX );

    /* Save PX and read from P before writing to R, in case P == R */
    FUNC0( FUNC9( &PX, &P->X ) );
    FUNC0( FUNC5( &RP, P ) );

    /* Set R to zero in modified x/z coordinates */
    FUNC0( FUNC13( &R->X, 1 ) );
    FUNC0( FUNC13( &R->Z, 0 ) );
    FUNC10( &R->Y );

    /* RP.X might be sligtly larger than P, so reduce it */
    FUNC1( RP.X );

    /* Randomize coordinates of the starting point */
    if( f_rng != NULL )
        FUNC0( FUNC4( grp, &RP, f_rng, p_rng ) );

    /* Loop invariant: R = result so far, RP = R + P */
    i = FUNC8( m ); /* one past the (zero-based) most significant bit */
    while( i-- > 0 )
    {
        b = FUNC11( m, i );
        /*
         *  if (b) R = 2R + P else R = 2R,
         * which is:
         *  if (b) double_add( RP, R, RP, R )
         *  else   double_add( R, RP, R, RP )
         * but using safe conditional swaps to avoid leaks
         */
        FUNC0( FUNC14( &R->X, &RP.X, b ) );
        FUNC0( FUNC14( &R->Z, &RP.Z, b ) );
        FUNC0( FUNC2( grp, R, &RP, R, &RP, &PX ) );
        FUNC0( FUNC14( &R->X, &RP.X, b ) );
        FUNC0( FUNC14( &R->Z, &RP.Z, b ) );
    }

    FUNC0( FUNC3( grp, R ) );

cleanup:
    FUNC6( &RP ); FUNC10( &PX );

    return( ret );
}
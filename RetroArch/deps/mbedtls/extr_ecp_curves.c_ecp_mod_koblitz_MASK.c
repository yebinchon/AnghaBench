#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ mbedtls_mpi_uint ;
struct TYPE_10__ {size_t n; int s; scalar_t__* p; } ;
typedef  TYPE_1__ mbedtls_mpi ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t P_KOBLITZ_MAX ; 
 size_t P_KOBLITZ_R ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6( mbedtls_mpi *N, mbedtls_mpi_uint *Rp, size_t p_limbs,
                                   size_t adjust, size_t shift, mbedtls_mpi_uint mask )
{
    int ret;
    size_t i;
    mbedtls_mpi M, R;
    mbedtls_mpi_uint Mp[P_KOBLITZ_MAX + P_KOBLITZ_R + 1];

    if( N->n < p_limbs )
        return( 0 );

    /* Init R */
    R.s = 1;
    R.p = Rp;
    R.n = P_KOBLITZ_R;

    /* Common setup for M */
    M.s = 1;
    M.p = Mp;

    /* M = A1 */
    M.n = N->n - ( p_limbs - adjust );
    if( M.n > p_limbs + adjust )
        M.n = p_limbs + adjust;
    FUNC5( Mp, 0, sizeof Mp );
    FUNC4( Mp, N->p + p_limbs - adjust, M.n * sizeof( mbedtls_mpi_uint ) );
    if( shift != 0 )
        FUNC0( FUNC3( &M, shift ) );
    M.n += R.n; /* Make room for multiplication by R */

    /* N = A0 */
    if( mask != 0 )
        N->p[p_limbs - 1] &= mask;
    for( i = p_limbs; i < N->n; i++ )
        N->p[i] = 0;

    /* N = A0 + R * A1 */
    FUNC0( FUNC2( &M, &M, &R ) );
    FUNC0( FUNC1( N, N, &M ) );

    /* Second pass */

    /* M = A1 */
    M.n = N->n - ( p_limbs - adjust );
    if( M.n > p_limbs + adjust )
        M.n = p_limbs + adjust;
    FUNC5( Mp, 0, sizeof Mp );
    FUNC4( Mp, N->p + p_limbs - adjust, M.n * sizeof( mbedtls_mpi_uint ) );
    if( shift != 0 )
        FUNC0( FUNC3( &M, shift ) );
    M.n += R.n; /* Make room for multiplication by R */

    /* N = A0 */
    if( mask != 0 )
        N->p[p_limbs - 1] &= mask;
    for( i = p_limbs; i < N->n; i++ )
        N->p[i] = 0;

    /* N = A0 + R * A1 */
    FUNC0( FUNC2( &M, &M, &R ) );
    FUNC0( FUNC1( N, N, &M ) );

cleanup:
    return( ret );
}
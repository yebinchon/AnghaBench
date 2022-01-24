#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ mbedtls_mpi_uint ;
struct TYPE_7__ {int n; int s; scalar_t__* p; } ;
typedef  TYPE_1__ mbedtls_mpi ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ P521_MASK ; 
 int P521_WIDTH ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC4( mbedtls_mpi *N )
{
    int ret;
    size_t i;
    mbedtls_mpi M;
    mbedtls_mpi_uint Mp[P521_WIDTH + 1];
    /* Worst case for the size of M is when mbedtls_mpi_uint is 16 bits:
     * we need to hold bits 513 to 1056, which is 34 limbs, that is
     * P521_WIDTH + 1. Otherwise P521_WIDTH is enough. */

    if( N->n < P521_WIDTH )
        return( 0 );

    /* M = A1 */
    M.s = 1;
    M.n = N->n - ( P521_WIDTH - 1 );
    if( M.n > P521_WIDTH + 1 )
        M.n = P521_WIDTH + 1;
    M.p = Mp;
    FUNC3( Mp, N->p + P521_WIDTH - 1, M.n * sizeof( mbedtls_mpi_uint ) );
    FUNC0( FUNC2( &M, 521 % ( 8 * sizeof( mbedtls_mpi_uint ) ) ) );

    /* N = A0 */
    N->p[P521_WIDTH - 1] &= P521_MASK;
    for( i = P521_WIDTH; i < N->n; i++ )
        N->p[i] = 0;

    /* N = A0 + A1 */
    FUNC0( FUNC1( N, N, &M ) );

cleanup:
    return( ret );
}
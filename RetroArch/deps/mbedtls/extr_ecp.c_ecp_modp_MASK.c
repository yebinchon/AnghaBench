#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ s; } ;
typedef  TYPE_1__ mbedtls_mpi ;
struct TYPE_16__ {int pbits; int /*<<< orphan*/  P; int /*<<< orphan*/  (* modp ) (TYPE_1__*) ;} ;
typedef  TYPE_2__ mbedtls_ecp_group ;

/* Variables and functions */
 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8( mbedtls_mpi *N, const mbedtls_ecp_group *grp )
{
    int ret;

    if( grp->modp == NULL )
        return( FUNC5( N, N, &grp->P ) );

    /* N->s < 0 is a much faster test, which fails only if N is 0 */
    if( ( N->s < 0 && FUNC3( N, 0 ) != 0 ) ||
        FUNC2( N ) > 2 * grp->pbits )
    {
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );
    }

    FUNC0( grp->modp( N ) );

    /* N->s < 0 is a much faster test, which fails only if N is 0 */
    while( N->s < 0 && FUNC3( N, 0 ) != 0 )
        FUNC0( FUNC1( N, N, &grp->P ) );

    while( FUNC4( N, &grp->P ) >= 0 )
        /* we known P, N and the result are positive */
        FUNC0( FUNC6( N, N, &grp->P ) );

cleanup:
    return( ret );
}
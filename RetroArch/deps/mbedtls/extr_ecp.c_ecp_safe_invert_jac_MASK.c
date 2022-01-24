#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_mpi ;
struct TYPE_5__ {int /*<<< orphan*/  Y; } ;
typedef  TYPE_1__ mbedtls_ecp_point ;
struct TYPE_6__ {int /*<<< orphan*/  P; } ;
typedef  TYPE_2__ mbedtls_ecp_group ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6( const mbedtls_ecp_group *grp,
                            mbedtls_ecp_point *Q,
                            unsigned char inv )
{
    int ret;
    unsigned char nonzero;
    mbedtls_mpi mQY;

    FUNC3( &mQY );

    /* Use the fact that -Q.Y mod P = P - Q.Y unless Q.Y == 0 */
    FUNC0( FUNC5( &mQY, &grp->P, &Q->Y ) );
    nonzero = FUNC1( &Q->Y, 0 ) != 0;
    FUNC0( FUNC4( &Q->Y, &mQY, inv & nonzero ) );

cleanup:
    FUNC2( &mQY );

    return( ret );
}
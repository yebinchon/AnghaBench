#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_mpi ;
struct TYPE_11__ {int /*<<< orphan*/  const Y; } ;
typedef  TYPE_1__ mbedtls_ecp_point ;
struct TYPE_12__ {int /*<<< orphan*/  P; } ;
typedef  TYPE_2__ mbedtls_ecp_group ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/  const*,TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC5( mbedtls_ecp_group *grp,
                                      mbedtls_ecp_point *R,
                                      const mbedtls_mpi *m,
                                      const mbedtls_ecp_point *P )
{
    int ret;

    if( FUNC3( m, 1 ) == 0 )
    {
        FUNC0( FUNC1( R, P ) );
    }
    else if( FUNC3( m, -1 ) == 0 )
    {
        FUNC0( FUNC1( R, P ) );
        if( FUNC3( &R->Y, 0 ) != 0 )
            FUNC0( FUNC4( &R->Y, &grp->P, &R->Y ) );
    }
    else
    {
        FUNC0( FUNC2( grp, R, m, P, NULL, NULL ) );
    }

cleanup:
    return( ret );
}
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
struct TYPE_5__ {int /*<<< orphan*/  Y; int /*<<< orphan*/  Z; int /*<<< orphan*/  X; } ;
struct TYPE_6__ {int nbits; TYPE_1__ G; int /*<<< orphan*/  P; int /*<<< orphan*/  pbits; int /*<<< orphan*/  A; } ;
typedef  TYPE_2__ mbedtls_ecp_group ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8( mbedtls_ecp_group *grp )
{
    int ret;

    /* Actually ( A + 2 ) / 4 */
    FUNC0( FUNC5( &grp->A, 16, "01DB42" ) );

    /* P = 2^255 - 19 */
    FUNC0( FUNC4( &grp->P, 1 ) );
    FUNC0( FUNC6( &grp->P, 255 ) );
    FUNC0( FUNC7( &grp->P, &grp->P, 19 ) );
    grp->pbits = FUNC2( &grp->P );

    /* Y intentionaly not set, since we use x/z coordinates.
     * This is used as a marker to identify Montgomery curves! */
    FUNC0( FUNC4( &grp->G.X, 9 ) );
    FUNC0( FUNC4( &grp->G.Z, 1 ) );
    FUNC3( &grp->G.Y );

    /* Actually, the required msb for private keys */
    grp->nbits = 254;

cleanup:
    if( ret != 0 )
        FUNC1( grp );

    return( ret );
}
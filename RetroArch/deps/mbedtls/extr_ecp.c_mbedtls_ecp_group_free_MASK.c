#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int h; size_t T_size; int /*<<< orphan*/ * T; int /*<<< orphan*/  N; int /*<<< orphan*/  G; int /*<<< orphan*/  B; int /*<<< orphan*/  A; int /*<<< orphan*/  P; } ;
typedef  TYPE_1__ mbedtls_ecp_group ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

void FUNC4( mbedtls_ecp_group *grp )
{
    size_t i;

    if( grp == NULL )
        return;

    if( grp->h != 1 )
    {
        FUNC2( &grp->P );
        FUNC2( &grp->A );
        FUNC2( &grp->B );
        FUNC0( &grp->G );
        FUNC2( &grp->N );
    }

    if( grp->T != NULL )
    {
        for( i = 0; i < grp->T_size; i++ )
            FUNC0( &grp->T[i] );
        FUNC1( grp->T );
    }

    FUNC3( grp, sizeof( mbedtls_ecp_group ) );
}
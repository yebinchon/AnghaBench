#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ mbedtls_ecp_group_id ;
struct TYPE_7__ {int /*<<< orphan*/  Y; int /*<<< orphan*/  Z; int /*<<< orphan*/  X; } ;
struct TYPE_8__ {scalar_t__ pbits; scalar_t__ nbits; TYPE_1__ G; int /*<<< orphan*/  N; int /*<<< orphan*/  B; int /*<<< orphan*/  A; int /*<<< orphan*/  P; } ;
typedef  TYPE_2__ mbedtls_ecp_group ;

/* Variables and functions */
 scalar_t__ const MBEDTLS_ECP_DP_NONE ; 
 int MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__ const) ; 
 scalar_t__* FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7( const mbedtls_ecp_group *grp, mbedtls_ecp_group_id *grp_id )
{
    int ret = 0;
    mbedtls_ecp_group ref;
    const mbedtls_ecp_group_id *id;

    FUNC2( &ref );

    for( id = FUNC4(); *id != MBEDTLS_ECP_DP_NONE; id++ )
    {
        /* Load the group associated to that id */
        FUNC1( &ref );
        FUNC0( FUNC3( &ref, *id ) );

        /* Compare to the group we were given, starting with easy tests */
        if( grp->pbits == ref.pbits && grp->nbits == ref.nbits &&
            FUNC5( &grp->P, &ref.P ) == 0 &&
            FUNC5( &grp->A, &ref.A ) == 0 &&
            FUNC5( &grp->B, &ref.B ) == 0 &&
            FUNC5( &grp->N, &ref.N ) == 0 &&
            FUNC5( &grp->G.X, &ref.G.X ) == 0 &&
            FUNC5( &grp->G.Z, &ref.G.Z ) == 0 &&
            /* For Y we may only know the parity bit, so compare only that */
            FUNC6( &grp->G.Y, 0 ) == FUNC6( &ref.G.Y, 0 ) )
        {
            break;
        }

    }

cleanup:
    FUNC1( &ref );

    *grp_id = *id;

    if( ret == 0 && *id == MBEDTLS_ECP_DP_NONE )
        ret = MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE;

    return( ret );
}
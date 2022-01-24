#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  X; } ;
typedef  TYPE_1__ mbedtls_ecp_point ;
struct TYPE_9__ {int /*<<< orphan*/  P; } ;
typedef  TYPE_2__ mbedtls_ecp_group ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__ const*) ; 
 int FUNC3 (TYPE_2__ const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7( const mbedtls_ecp_group *grp, mbedtls_ecp_point *P )
{
    int ret;

#if defined(MBEDTLS_ECP_NORMALIZE_MXZ_ALT)
    if ( mbedtls_internal_ecp_grp_capable( grp ) )
    {
        return mbedtls_internal_ecp_normalize_mxz( grp, P );
    }
#endif /* MBEDTLS_ECP_NORMALIZE_MXZ_ALT */

    FUNC0( FUNC4( &P->Z, &P->Z, &grp->P ) );
    FUNC0( FUNC6( &P->X, &P->X, &P->Z ) ); FUNC1( P->X );
    FUNC0( FUNC5( &P->Z, 1 ) );

cleanup:
    return( ret );
}
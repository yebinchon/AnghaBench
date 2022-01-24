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
struct TYPE_4__ {int /*<<< orphan*/  Z; int /*<<< orphan*/  Y; int /*<<< orphan*/  X; } ;
typedef  TYPE_1__ mbedtls_ecp_point ;

/* Variables and functions */
 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC1( const mbedtls_ecp_point *P,
                           const mbedtls_ecp_point *Q )
{
    if( FUNC0( &P->X, &Q->X ) == 0 &&
        FUNC0( &P->Y, &Q->Y ) == 0 &&
        FUNC0( &P->Z, &Q->Z ) == 0 )
    {
        return( 0 );
    }

    return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );
}
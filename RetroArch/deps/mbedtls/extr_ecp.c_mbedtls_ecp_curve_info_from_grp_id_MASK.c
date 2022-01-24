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
typedef  scalar_t__ mbedtls_ecp_group_id ;
struct TYPE_4__ {scalar_t__ grp_id; } ;
typedef  TYPE_1__ mbedtls_ecp_curve_info ;

/* Variables and functions */
 scalar_t__ MBEDTLS_ECP_DP_NONE ; 
 TYPE_1__* FUNC0 () ; 

const mbedtls_ecp_curve_info *FUNC1( mbedtls_ecp_group_id grp_id )
{
    const mbedtls_ecp_curve_info *curve_info;

    for( curve_info = FUNC0();
         curve_info->grp_id != MBEDTLS_ECP_DP_NONE;
         curve_info++ )
    {
        if( curve_info->grp_id == grp_id )
            return( curve_info );
    }

    return( NULL );
}
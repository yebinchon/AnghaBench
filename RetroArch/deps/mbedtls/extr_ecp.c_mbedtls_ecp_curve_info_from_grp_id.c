
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ mbedtls_ecp_group_id ;
struct TYPE_4__ {scalar_t__ grp_id; } ;
typedef TYPE_1__ mbedtls_ecp_curve_info ;


 scalar_t__ MBEDTLS_ECP_DP_NONE ;
 TYPE_1__* mbedtls_ecp_curve_list () ;

const mbedtls_ecp_curve_info *mbedtls_ecp_curve_info_from_grp_id( mbedtls_ecp_group_id grp_id )
{
    const mbedtls_ecp_curve_info *curve_info;

    for( curve_info = mbedtls_ecp_curve_list();
         curve_info->grp_id != MBEDTLS_ECP_DP_NONE;
         curve_info++ )
    {
        if( curve_info->grp_id == grp_id )
            return( curve_info );
    }

    return( ((void*)0) );
}

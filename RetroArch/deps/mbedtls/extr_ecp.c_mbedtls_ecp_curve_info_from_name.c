
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ grp_id; int name; } ;
typedef TYPE_1__ mbedtls_ecp_curve_info ;


 scalar_t__ MBEDTLS_ECP_DP_NONE ;
 TYPE_1__* mbedtls_ecp_curve_list () ;
 scalar_t__ strcmp (int ,char const*) ;

const mbedtls_ecp_curve_info *mbedtls_ecp_curve_info_from_name( const char *name )
{
    const mbedtls_ecp_curve_info *curve_info;

    for( curve_info = mbedtls_ecp_curve_list();
         curve_info->grp_id != MBEDTLS_ECP_DP_NONE;
         curve_info++ )
    {
        if( strcmp( curve_info->name, name ) == 0 )
            return( curve_info );
    }

    return( ((void*)0) );
}

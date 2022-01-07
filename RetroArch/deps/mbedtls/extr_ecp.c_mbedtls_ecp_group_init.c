
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_ecp_group ;


 int memset (int *,int ,int) ;

void mbedtls_ecp_group_init( mbedtls_ecp_group *grp )
{
    if( grp == ((void*)0) )
        return;

    memset( grp, 0, sizeof( mbedtls_ecp_group ) );
}

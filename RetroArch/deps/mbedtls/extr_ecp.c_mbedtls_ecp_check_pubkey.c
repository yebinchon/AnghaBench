
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Z; } ;
typedef TYPE_1__ mbedtls_ecp_point ;
typedef int mbedtls_ecp_group ;


 scalar_t__ ECP_TYPE_MONTGOMERY ;
 scalar_t__ ECP_TYPE_SHORT_WEIERSTRASS ;
 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_ECP_INVALID_KEY ;
 int ecp_check_pubkey_mx (int const*,TYPE_1__ const*) ;
 int ecp_check_pubkey_sw (int const*,TYPE_1__ const*) ;
 scalar_t__ ecp_get_type (int const*) ;
 scalar_t__ mbedtls_mpi_cmp_int (int *,int) ;

int mbedtls_ecp_check_pubkey( const mbedtls_ecp_group *grp, const mbedtls_ecp_point *pt )
{

    if( mbedtls_mpi_cmp_int( &pt->Z, 1 ) != 0 )
        return( MBEDTLS_ERR_ECP_INVALID_KEY );
    return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );
}

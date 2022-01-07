
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mbedtls_mpi ;
struct TYPE_4__ {int nbits; int N; } ;
typedef TYPE_1__ mbedtls_ecp_group ;


 scalar_t__ ECP_TYPE_MONTGOMERY ;
 scalar_t__ ECP_TYPE_SHORT_WEIERSTRASS ;
 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_ECP_INVALID_KEY ;
 scalar_t__ ecp_get_type (TYPE_1__ const*) ;
 int mbedtls_mpi_bitlen (int const*) ;
 scalar_t__ mbedtls_mpi_cmp_int (int const*,int) ;
 scalar_t__ mbedtls_mpi_cmp_mpi (int const*,int *) ;
 scalar_t__ mbedtls_mpi_get_bit (int const*,int) ;

int mbedtls_ecp_check_privkey( const mbedtls_ecp_group *grp, const mbedtls_mpi *d )
{
    return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ s; } ;
typedef TYPE_1__ mbedtls_mpi ;
struct TYPE_16__ {int pbits; int P; int (* modp ) (TYPE_1__*) ;} ;
typedef TYPE_2__ mbedtls_ecp_group ;


 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ;
 int MBEDTLS_MPI_CHK (int ) ;
 int mbedtls_mpi_add_mpi (TYPE_1__*,TYPE_1__*,int *) ;
 int mbedtls_mpi_bitlen (TYPE_1__*) ;
 scalar_t__ mbedtls_mpi_cmp_int (TYPE_1__*,int ) ;
 scalar_t__ mbedtls_mpi_cmp_mpi (TYPE_1__*,int *) ;
 int mbedtls_mpi_mod_mpi (TYPE_1__*,TYPE_1__*,int *) ;
 int mbedtls_mpi_sub_abs (TYPE_1__*,TYPE_1__*,int *) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int ecp_modp( mbedtls_mpi *N, const mbedtls_ecp_group *grp )
{
    int ret;

    if( grp->modp == ((void*)0) )
        return( mbedtls_mpi_mod_mpi( N, N, &grp->P ) );


    if( ( N->s < 0 && mbedtls_mpi_cmp_int( N, 0 ) != 0 ) ||
        mbedtls_mpi_bitlen( N ) > 2 * grp->pbits )
    {
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );
    }

    MBEDTLS_MPI_CHK( grp->modp( N ) );


    while( N->s < 0 && mbedtls_mpi_cmp_int( N, 0 ) != 0 )
        MBEDTLS_MPI_CHK( mbedtls_mpi_add_mpi( N, N, &grp->P ) );

    while( mbedtls_mpi_cmp_mpi( N, &grp->P ) >= 0 )

        MBEDTLS_MPI_CHK( mbedtls_mpi_sub_abs( N, N, &grp->P ) );

cleanup:
    return( ret );
}

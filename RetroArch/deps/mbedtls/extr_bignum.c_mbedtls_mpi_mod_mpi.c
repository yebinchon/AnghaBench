
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const mbedtls_mpi ;


 int MBEDTLS_ERR_MPI_NEGATIVE_VALUE ;
 int MBEDTLS_MPI_CHK (int ) ;
 int mbedtls_mpi_add_mpi (int const*,int const*,int const*) ;
 scalar_t__ mbedtls_mpi_cmp_int (int const*,int ) ;
 scalar_t__ mbedtls_mpi_cmp_mpi (int const*,int const*) ;
 int mbedtls_mpi_div_mpi (int *,int const*,int const*,int const*) ;
 int mbedtls_mpi_sub_mpi (int const*,int const*,int const*) ;

int mbedtls_mpi_mod_mpi( mbedtls_mpi *R, const mbedtls_mpi *A, const mbedtls_mpi *B )
{
    int ret;

    if( mbedtls_mpi_cmp_int( B, 0 ) < 0 )
        return( MBEDTLS_ERR_MPI_NEGATIVE_VALUE );

    MBEDTLS_MPI_CHK( mbedtls_mpi_div_mpi( ((void*)0), R, A, B ) );

    while( mbedtls_mpi_cmp_int( R, 0 ) < 0 )
      MBEDTLS_MPI_CHK( mbedtls_mpi_add_mpi( R, R, B ) );

    while( mbedtls_mpi_cmp_mpi( R, B ) >= 0 )
      MBEDTLS_MPI_CHK( mbedtls_mpi_sub_mpi( R, R, B ) );

cleanup:

    return( ret );
}

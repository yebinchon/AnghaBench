
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_mpi ;


 int MBEDTLS_ERR_DHM_BAD_INPUT_DATA ;
 int MBEDTLS_MPI_CHK (int ) ;
 scalar_t__ mbedtls_mpi_cmp_mpi (int const*,int *) ;
 int mbedtls_mpi_free (int *) ;
 int mbedtls_mpi_init (int *) ;
 int mbedtls_mpi_lset (int *,int) ;
 int mbedtls_mpi_sub_int (int *,int const*,int) ;

__attribute__((used)) static int dhm_check_range( const mbedtls_mpi *param, const mbedtls_mpi *P )
{
    mbedtls_mpi L, U;
    int ret = MBEDTLS_ERR_DHM_BAD_INPUT_DATA;

    mbedtls_mpi_init( &L ); mbedtls_mpi_init( &U );

    MBEDTLS_MPI_CHK( mbedtls_mpi_lset( &L, 2 ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_sub_int( &U, P, 2 ) );

    if( mbedtls_mpi_cmp_mpi( param, &L ) >= 0 &&
        mbedtls_mpi_cmp_mpi( param, &U ) <= 0 )
    {
        ret = 0;
    }

cleanup:
    mbedtls_mpi_free( &L ); mbedtls_mpi_free( &U );
    return( ret );
}

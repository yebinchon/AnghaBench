
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ mbedtls_mpi_uint ;
struct TYPE_5__ {int* p; } ;
typedef TYPE_1__ mbedtls_mpi ;


 int MBEDTLS_ERR_MPI_NOT_ACCEPTABLE ;
 int MBEDTLS_MPI_CHK (int ) ;
 scalar_t__ mbedtls_mpi_cmp_int (TYPE_1__ const*,scalar_t__) ;
 int mbedtls_mpi_mod_int (scalar_t__*,TYPE_1__ const*,scalar_t__) ;
 scalar_t__* small_prime ;

__attribute__((used)) static int mpi_check_small_factors( const mbedtls_mpi *X )
{
    int ret = 0;
    size_t i;
    mbedtls_mpi_uint r;

    if( ( X->p[0] & 1 ) == 0 )
        return( MBEDTLS_ERR_MPI_NOT_ACCEPTABLE );

    for( i = 0; small_prime[i] > 0; i++ )
    {
        if( mbedtls_mpi_cmp_int( X, small_prime[i] ) <= 0 )
            return( 1 );

        MBEDTLS_MPI_CHK( mbedtls_mpi_mod_int( &r, X, small_prime[i] ) );

        if( r == 0 )
            return( MBEDTLS_ERR_MPI_NOT_ACCEPTABLE );
    }

cleanup:
    return( ret );
}

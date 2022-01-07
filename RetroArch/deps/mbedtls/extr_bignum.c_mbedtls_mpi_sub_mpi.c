
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int s; } ;
typedef TYPE_1__ mbedtls_mpi ;


 int MBEDTLS_MPI_CHK (int ) ;
 int mbedtls_mpi_add_abs (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*) ;
 scalar_t__ mbedtls_mpi_cmp_abs (TYPE_1__ const*,TYPE_1__ const*) ;
 int mbedtls_mpi_sub_abs (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*) ;

int mbedtls_mpi_sub_mpi( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *B )
{
    int ret, s = A->s;

    if( A->s * B->s > 0 )
    {
        if( mbedtls_mpi_cmp_abs( A, B ) >= 0 )
        {
            MBEDTLS_MPI_CHK( mbedtls_mpi_sub_abs( X, A, B ) );
            X->s = s;
        }
        else
        {
            MBEDTLS_MPI_CHK( mbedtls_mpi_sub_abs( X, B, A ) );
            X->s = -s;
        }
    }
    else
    {
        MBEDTLS_MPI_CHK( mbedtls_mpi_add_abs( X, A, B ) );
        X->s = s;
    }

cleanup:

    return( ret );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mbedtls_mpi_sint ;
struct TYPE_4__ {int n; int s; int * p; } ;
typedef TYPE_1__ mbedtls_mpi ;


 int MBEDTLS_MPI_CHK (int ) ;
 int ciL ;
 int mbedtls_mpi_grow (TYPE_1__*,int) ;
 int memset (int *,int ,int) ;

int mbedtls_mpi_lset( mbedtls_mpi *X, mbedtls_mpi_sint z )
{
    int ret;

    MBEDTLS_MPI_CHK( mbedtls_mpi_grow( X, 1 ) );
    memset( X->p, 0, X->n * ciL );

    X->p[0] = ( z < 0 ) ? -z : z;
    X->s = ( z < 0 ) ? -1 : 1;

cleanup:

    return( ret );
}

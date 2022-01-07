
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int mbedtls_mpi_uint ;
struct TYPE_7__ {int* p; int n; int s; } ;
typedef TYPE_1__ mbedtls_mpi ;


 int MBEDTLS_MPI_CHK (int ) ;
 int mbedtls_mpi_sub_abs (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int fix_negative( mbedtls_mpi *N, signed char c, mbedtls_mpi *C, size_t bits )
{
    int ret;



    ((void) bits);





        C->p[ C->n - 1 ] = (mbedtls_mpi_uint) -c;


    MBEDTLS_MPI_CHK( mbedtls_mpi_sub_abs( N, C, N ) );
    N->s = -1;

cleanup:

    return( ret );
}

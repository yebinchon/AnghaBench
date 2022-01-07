
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mbedtls_mpi_uint ;
struct TYPE_4__ {int n; int * p; } ;
typedef TYPE_1__ mbedtls_mpi ;


 int ADD (int) ;
 int LAST ;
 int MBEDTLS_MPI_CHK (int ) ;
 int NEXT ;
 int WIDTH ;
 int mbedtls_mpi_grow (TYPE_1__*,int) ;

__attribute__((used)) static int ecp_mod_p192( mbedtls_mpi *N )
{
    int ret;
    mbedtls_mpi_uint c = 0;
    mbedtls_mpi_uint *p, *end;


    MBEDTLS_MPI_CHK( mbedtls_mpi_grow( N, 6 * WIDTH ) );

    p = N->p;
    end = p + N->n;

    ADD( 3 ); ADD( 5 ); NEXT;
    ADD( 3 ); ADD( 4 ); ADD( 5 ); NEXT;
    ADD( 4 ); ADD( 5 ); LAST;

cleanup:
    return( ret );
}

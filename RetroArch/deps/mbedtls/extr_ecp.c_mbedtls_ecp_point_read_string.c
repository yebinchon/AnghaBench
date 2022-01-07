
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Z; int Y; int X; } ;
typedef TYPE_1__ mbedtls_ecp_point ;


 int MBEDTLS_MPI_CHK (int ) ;
 int mbedtls_mpi_lset (int *,int) ;
 int mbedtls_mpi_read_string (int *,int,char const*) ;

int mbedtls_ecp_point_read_string( mbedtls_ecp_point *P, int radix,
                           const char *x, const char *y )
{
    int ret;

    MBEDTLS_MPI_CHK( mbedtls_mpi_read_string( &P->X, radix, x ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_read_string( &P->Y, radix, y ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_lset( &P->Z, 1 ) );

cleanup:
    return( ret );
}

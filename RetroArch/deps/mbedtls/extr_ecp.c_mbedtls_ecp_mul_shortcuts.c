
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int mbedtls_mpi ;
struct TYPE_11__ {int const Y; } ;
typedef TYPE_1__ mbedtls_ecp_point ;
struct TYPE_12__ {int P; } ;
typedef TYPE_2__ mbedtls_ecp_group ;


 int MBEDTLS_MPI_CHK (int ) ;
 int mbedtls_ecp_copy (TYPE_1__*,TYPE_1__ const*) ;
 int mbedtls_ecp_mul (TYPE_2__*,TYPE_1__*,int const*,TYPE_1__ const*,int *,int *) ;
 scalar_t__ mbedtls_mpi_cmp_int (int const*,int) ;
 int mbedtls_mpi_sub_mpi (int const*,int *,int const*) ;

__attribute__((used)) static int mbedtls_ecp_mul_shortcuts( mbedtls_ecp_group *grp,
                                      mbedtls_ecp_point *R,
                                      const mbedtls_mpi *m,
                                      const mbedtls_ecp_point *P )
{
    int ret;

    if( mbedtls_mpi_cmp_int( m, 1 ) == 0 )
    {
        MBEDTLS_MPI_CHK( mbedtls_ecp_copy( R, P ) );
    }
    else if( mbedtls_mpi_cmp_int( m, -1 ) == 0 )
    {
        MBEDTLS_MPI_CHK( mbedtls_ecp_copy( R, P ) );
        if( mbedtls_mpi_cmp_int( &R->Y, 0 ) != 0 )
            MBEDTLS_MPI_CHK( mbedtls_mpi_sub_mpi( &R->Y, &grp->P, &R->Y ) );
    }
    else
    {
        MBEDTLS_MPI_CHK( mbedtls_ecp_mul( grp, R, m, P, ((void*)0), ((void*)0) ) );
    }

cleanup:
    return( ret );
}

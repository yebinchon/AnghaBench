
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mbedtls_mpi ;
struct TYPE_5__ {int Y; } ;
typedef TYPE_1__ mbedtls_ecp_point ;
struct TYPE_6__ {int P; } ;
typedef TYPE_2__ mbedtls_ecp_group ;


 int MBEDTLS_MPI_CHK (int ) ;
 scalar_t__ mbedtls_mpi_cmp_int (int *,int ) ;
 int mbedtls_mpi_free (int *) ;
 int mbedtls_mpi_init (int *) ;
 int mbedtls_mpi_safe_cond_assign (int *,int *,unsigned char) ;
 int mbedtls_mpi_sub_mpi (int *,int *,int *) ;

__attribute__((used)) static int ecp_safe_invert_jac( const mbedtls_ecp_group *grp,
                            mbedtls_ecp_point *Q,
                            unsigned char inv )
{
    int ret;
    unsigned char nonzero;
    mbedtls_mpi mQY;

    mbedtls_mpi_init( &mQY );


    MBEDTLS_MPI_CHK( mbedtls_mpi_sub_mpi( &mQY, &grp->P, &Q->Y ) );
    nonzero = mbedtls_mpi_cmp_int( &Q->Y, 0 ) != 0;
    MBEDTLS_MPI_CHK( mbedtls_mpi_safe_cond_assign( &Q->Y, &mQY, inv & nonzero ) );

cleanup:
    mbedtls_mpi_free( &mQY );

    return( ret );
}

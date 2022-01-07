
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Y; int Z; int X; } ;
struct TYPE_6__ {int nbits; TYPE_1__ G; int P; int pbits; int A; } ;
typedef TYPE_2__ mbedtls_ecp_group ;


 int MBEDTLS_MPI_CHK (int ) ;
 int mbedtls_ecp_group_free (TYPE_2__*) ;
 int mbedtls_mpi_bitlen (int *) ;
 int mbedtls_mpi_free (int *) ;
 int mbedtls_mpi_lset (int *,int) ;
 int mbedtls_mpi_read_string (int *,int,char*) ;
 int mbedtls_mpi_shift_l (int *,int) ;
 int mbedtls_mpi_sub_int (int *,int *,int) ;

__attribute__((used)) static int ecp_use_curve25519( mbedtls_ecp_group *grp )
{
    int ret;


    MBEDTLS_MPI_CHK( mbedtls_mpi_read_string( &grp->A, 16, "01DB42" ) );


    MBEDTLS_MPI_CHK( mbedtls_mpi_lset( &grp->P, 1 ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_shift_l( &grp->P, 255 ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_sub_int( &grp->P, &grp->P, 19 ) );
    grp->pbits = mbedtls_mpi_bitlen( &grp->P );



    MBEDTLS_MPI_CHK( mbedtls_mpi_lset( &grp->G.X, 9 ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_lset( &grp->G.Z, 1 ) );
    mbedtls_mpi_free( &grp->G.Y );


    grp->nbits = 254;

cleanup:
    if( ret != 0 )
        mbedtls_ecp_group_free( grp );

    return( ret );
}

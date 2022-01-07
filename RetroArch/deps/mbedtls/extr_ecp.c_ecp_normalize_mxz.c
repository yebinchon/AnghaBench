
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int Z; int X; } ;
typedef TYPE_1__ mbedtls_ecp_point ;
struct TYPE_9__ {int P; } ;
typedef TYPE_2__ mbedtls_ecp_group ;


 int MBEDTLS_MPI_CHK (int ) ;
 int MOD_MUL (int ) ;
 scalar_t__ mbedtls_internal_ecp_grp_capable (TYPE_2__ const*) ;
 int mbedtls_internal_ecp_normalize_mxz (TYPE_2__ const*,TYPE_1__*) ;
 int mbedtls_mpi_inv_mod (int *,int *,int *) ;
 int mbedtls_mpi_lset (int *,int) ;
 int mbedtls_mpi_mul_mpi (int *,int *,int *) ;

__attribute__((used)) static int ecp_normalize_mxz( const mbedtls_ecp_group *grp, mbedtls_ecp_point *P )
{
    int ret;
    MBEDTLS_MPI_CHK( mbedtls_mpi_inv_mod( &P->Z, &P->Z, &grp->P ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &P->X, &P->X, &P->Z ) ); MOD_MUL( P->X );
    MBEDTLS_MPI_CHK( mbedtls_mpi_lset( &P->Z, 1 ) );

cleanup:
    return( ret );
}

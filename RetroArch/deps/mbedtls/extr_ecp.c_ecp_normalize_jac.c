
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int mbedtls_mpi ;
struct TYPE_8__ {int Z; int Y; int X; } ;
typedef TYPE_1__ mbedtls_ecp_point ;
struct TYPE_9__ {int P; } ;
typedef TYPE_2__ mbedtls_ecp_group ;


 int MBEDTLS_MPI_CHK (int ) ;
 int MOD_MUL (int ) ;
 scalar_t__ mbedtls_internal_ecp_grp_capable (TYPE_2__ const*) ;
 int mbedtls_internal_ecp_normalize_jac (TYPE_2__ const*,TYPE_1__*) ;
 scalar_t__ mbedtls_mpi_cmp_int (int *,int ) ;
 int mbedtls_mpi_free (int *) ;
 int mbedtls_mpi_init (int *) ;
 int mbedtls_mpi_inv_mod (int *,int *,int *) ;
 int mbedtls_mpi_lset (int *,int) ;
 int mbedtls_mpi_mul_mpi (int *,int *,int *) ;

__attribute__((used)) static int ecp_normalize_jac( const mbedtls_ecp_group *grp, mbedtls_ecp_point *pt )
{
    int ret;
    mbedtls_mpi Zi, ZZi;

    if( mbedtls_mpi_cmp_int( &pt->Z, 0 ) == 0 )
        return( 0 );







    mbedtls_mpi_init( &Zi ); mbedtls_mpi_init( &ZZi );




    MBEDTLS_MPI_CHK( mbedtls_mpi_inv_mod( &Zi, &pt->Z, &grp->P ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &ZZi, &Zi, &Zi ) ); MOD_MUL( ZZi );
    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &pt->X, &pt->X, &ZZi ) ); MOD_MUL( pt->X );




    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &pt->Y, &pt->Y, &ZZi ) ); MOD_MUL( pt->Y );
    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &pt->Y, &pt->Y, &Zi ) ); MOD_MUL( pt->Y );




    MBEDTLS_MPI_CHK( mbedtls_mpi_lset( &pt->Z, 1 ) );

cleanup:

    mbedtls_mpi_free( &Zi ); mbedtls_mpi_free( &ZZi );

    return( ret );
}

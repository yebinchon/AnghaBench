
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int mbedtls_mpi ;
struct TYPE_6__ {int X; int Y; } ;
typedef TYPE_1__ mbedtls_ecp_point ;
struct TYPE_8__ {int * p; } ;
struct TYPE_7__ {TYPE_3__ B; TYPE_3__ A; int P; } ;
typedef TYPE_2__ mbedtls_ecp_group ;


 int MBEDTLS_ERR_ECP_INVALID_KEY ;
 int MBEDTLS_MPI_CHK (int ) ;
 int MOD_ADD (int ) ;
 int MOD_MUL (int ) ;
 int MOD_SUB (int ) ;
 int mbedtls_mpi_add_mpi (int *,int *,TYPE_3__*) ;
 scalar_t__ mbedtls_mpi_cmp_int (int *,int ) ;
 scalar_t__ mbedtls_mpi_cmp_mpi (int *,int *) ;
 int mbedtls_mpi_free (int *) ;
 int mbedtls_mpi_init (int *) ;
 int mbedtls_mpi_mul_mpi (int *,int *,int *) ;
 int mbedtls_mpi_sub_int (int *,int *,int) ;

__attribute__((used)) static int ecp_check_pubkey_sw( const mbedtls_ecp_group *grp, const mbedtls_ecp_point *pt )
{
    int ret;
    mbedtls_mpi YY, RHS;


    if( mbedtls_mpi_cmp_int( &pt->X, 0 ) < 0 ||
        mbedtls_mpi_cmp_int( &pt->Y, 0 ) < 0 ||
        mbedtls_mpi_cmp_mpi( &pt->X, &grp->P ) >= 0 ||
        mbedtls_mpi_cmp_mpi( &pt->Y, &grp->P ) >= 0 )
        return( MBEDTLS_ERR_ECP_INVALID_KEY );

    mbedtls_mpi_init( &YY ); mbedtls_mpi_init( &RHS );





    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &YY, &pt->Y, &pt->Y ) ); MOD_MUL( YY );
    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &RHS, &pt->X, &pt->X ) ); MOD_MUL( RHS );


    if( grp->A.p == ((void*)0) )
    {
        MBEDTLS_MPI_CHK( mbedtls_mpi_sub_int( &RHS, &RHS, 3 ) ); MOD_SUB( RHS );
    }
    else
    {
        MBEDTLS_MPI_CHK( mbedtls_mpi_add_mpi( &RHS, &RHS, &grp->A ) ); MOD_ADD( RHS );
    }

    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &RHS, &RHS, &pt->X ) ); MOD_MUL( RHS );
    MBEDTLS_MPI_CHK( mbedtls_mpi_add_mpi( &RHS, &RHS, &grp->B ) ); MOD_ADD( RHS );

    if( mbedtls_mpi_cmp_mpi( &YY, &RHS ) != 0 )
        ret = MBEDTLS_ERR_ECP_INVALID_KEY;

cleanup:

    mbedtls_mpi_free( &YY ); mbedtls_mpi_free( &RHS );

    return( ret );
}

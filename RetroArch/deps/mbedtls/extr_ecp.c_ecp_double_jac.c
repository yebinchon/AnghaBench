
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


struct TYPE_31__ {int * p; } ;
typedef TYPE_1__ mbedtls_mpi ;
struct TYPE_32__ {TYPE_1__ Z; TYPE_1__ Y; TYPE_1__ X; } ;
typedef TYPE_2__ mbedtls_ecp_point ;
struct TYPE_33__ {TYPE_1__ A; } ;
typedef TYPE_3__ mbedtls_ecp_group ;


 int MBEDTLS_MPI_CHK (int ) ;
 int MOD_ADD (TYPE_1__) ;
 int MOD_MUL (TYPE_1__) ;
 int MOD_SUB (TYPE_1__) ;
 int dbl_count ;
 int mbedtls_internal_ecp_double_jac (TYPE_3__ const*,TYPE_2__*,TYPE_2__ const*) ;
 scalar_t__ mbedtls_internal_ecp_grp_capable (TYPE_3__ const*) ;
 int mbedtls_mpi_add_mpi (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ mbedtls_mpi_cmp_int (TYPE_1__*,int ) ;
 int mbedtls_mpi_copy (TYPE_1__*,TYPE_1__*) ;
 int mbedtls_mpi_free (TYPE_1__*) ;
 int mbedtls_mpi_init (TYPE_1__*) ;
 int mbedtls_mpi_mul_int (TYPE_1__*,TYPE_1__*,int) ;
 int mbedtls_mpi_mul_mpi (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int mbedtls_mpi_shift_l (TYPE_1__*,int) ;
 int mbedtls_mpi_sub_mpi (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int ecp_double_jac( const mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
                           const mbedtls_ecp_point *P )
{
    int ret;
    mbedtls_mpi M, S, T, U;
    mbedtls_mpi_init( &M ); mbedtls_mpi_init( &S ); mbedtls_mpi_init( &T ); mbedtls_mpi_init( &U );


    if( grp->A.p == ((void*)0) )
    {

        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &S, &P->Z, &P->Z ) ); MOD_MUL( S );
        MBEDTLS_MPI_CHK( mbedtls_mpi_add_mpi( &T, &P->X, &S ) ); MOD_ADD( T );
        MBEDTLS_MPI_CHK( mbedtls_mpi_sub_mpi( &U, &P->X, &S ) ); MOD_SUB( U );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &S, &T, &U ) ); MOD_MUL( S );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_int( &M, &S, 3 ) ); MOD_ADD( M );
    }
    else
    {

        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &S, &P->X, &P->X ) ); MOD_MUL( S );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_int( &M, &S, 3 ) ); MOD_ADD( M );


        if( mbedtls_mpi_cmp_int( &grp->A, 0 ) != 0 )
        {

            MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &S, &P->Z, &P->Z ) ); MOD_MUL( S );
            MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &T, &S, &S ) ); MOD_MUL( T );
            MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &S, &T, &grp->A ) ); MOD_MUL( S );
            MBEDTLS_MPI_CHK( mbedtls_mpi_add_mpi( &M, &M, &S ) ); MOD_ADD( M );
        }
    }


    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &T, &P->Y, &P->Y ) ); MOD_MUL( T );
    MBEDTLS_MPI_CHK( mbedtls_mpi_shift_l( &T, 1 ) ); MOD_ADD( T );
    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &S, &P->X, &T ) ); MOD_MUL( S );
    MBEDTLS_MPI_CHK( mbedtls_mpi_shift_l( &S, 1 ) ); MOD_ADD( S );


    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &U, &T, &T ) ); MOD_MUL( U );
    MBEDTLS_MPI_CHK( mbedtls_mpi_shift_l( &U, 1 ) ); MOD_ADD( U );


    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &T, &M, &M ) ); MOD_MUL( T );
    MBEDTLS_MPI_CHK( mbedtls_mpi_sub_mpi( &T, &T, &S ) ); MOD_SUB( T );
    MBEDTLS_MPI_CHK( mbedtls_mpi_sub_mpi( &T, &T, &S ) ); MOD_SUB( T );


    MBEDTLS_MPI_CHK( mbedtls_mpi_sub_mpi( &S, &S, &T ) ); MOD_SUB( S );
    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &S, &S, &M ) ); MOD_MUL( S );
    MBEDTLS_MPI_CHK( mbedtls_mpi_sub_mpi( &S, &S, &U ) ); MOD_SUB( S );


    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &U, &P->Y, &P->Z ) ); MOD_MUL( U );
    MBEDTLS_MPI_CHK( mbedtls_mpi_shift_l( &U, 1 ) ); MOD_ADD( U );

    MBEDTLS_MPI_CHK( mbedtls_mpi_copy( &R->X, &T ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_copy( &R->Y, &S ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_copy( &R->Z, &U ) );

cleanup:
    mbedtls_mpi_free( &M ); mbedtls_mpi_free( &S ); mbedtls_mpi_free( &T ); mbedtls_mpi_free( &U );

    return( ret );
}

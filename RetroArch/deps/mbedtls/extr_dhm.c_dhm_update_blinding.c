
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int RP; int P; int X; int Vf; int Vi; int pX; } ;
typedef TYPE_1__ mbedtls_dhm_context ;


 int MBEDTLS_ERR_MPI_NOT_ACCEPTABLE ;
 int MBEDTLS_MPI_CHK (int ) ;
 scalar_t__ mbedtls_mpi_cmp_int (int *,int) ;
 scalar_t__ mbedtls_mpi_cmp_mpi (int *,int *) ;
 int mbedtls_mpi_copy (int *,int *) ;
 int mbedtls_mpi_exp_mod (int *,int *,int *,int *,int *) ;
 int mbedtls_mpi_fill_random (int *,int ,int (*) (void*,unsigned char*,size_t),void*) ;
 int mbedtls_mpi_inv_mod (int *,int *,int *) ;
 int mbedtls_mpi_lset (int *,int) ;
 int mbedtls_mpi_mod_mpi (int *,int *,int *) ;
 int mbedtls_mpi_mul_mpi (int *,int *,int *) ;
 int mbedtls_mpi_shift_r (int *,int) ;
 int mbedtls_mpi_size (int *) ;

__attribute__((used)) static int dhm_update_blinding( mbedtls_dhm_context *ctx,
                    int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    int ret, count;





    if( mbedtls_mpi_cmp_mpi( &ctx->X, &ctx->pX ) != 0 )
    {
        MBEDTLS_MPI_CHK( mbedtls_mpi_copy( &ctx->pX, &ctx->X ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_lset( &ctx->Vi, 1 ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_lset( &ctx->Vf, 1 ) );

        return( 0 );
    }





    if( mbedtls_mpi_cmp_int( &ctx->Vi, 1 ) != 0 )
    {
        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &ctx->Vi, &ctx->Vi, &ctx->Vi ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mod_mpi( &ctx->Vi, &ctx->Vi, &ctx->P ) );

        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &ctx->Vf, &ctx->Vf, &ctx->Vf ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mod_mpi( &ctx->Vf, &ctx->Vf, &ctx->P ) );

        return( 0 );
    }






    count = 0;
    do
    {
        MBEDTLS_MPI_CHK( mbedtls_mpi_fill_random( &ctx->Vi, mbedtls_mpi_size( &ctx->P ), f_rng, p_rng ) );

        while( mbedtls_mpi_cmp_mpi( &ctx->Vi, &ctx->P ) >= 0 )
            MBEDTLS_MPI_CHK( mbedtls_mpi_shift_r( &ctx->Vi, 1 ) );

        if( count++ > 10 )
            return( MBEDTLS_ERR_MPI_NOT_ACCEPTABLE );
    }
    while( mbedtls_mpi_cmp_int( &ctx->Vi, 1 ) <= 0 );


    MBEDTLS_MPI_CHK( mbedtls_mpi_inv_mod( &ctx->Vf, &ctx->Vi, &ctx->P ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_exp_mod( &ctx->Vf, &ctx->Vf, &ctx->X, &ctx->P, &ctx->RP ) );

cleanup:
    return( ret );
}

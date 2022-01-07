
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mbedtls_mpi ;
struct TYPE_4__ {size_t len; int K; int P; int Vf; int RP; int X; int GY; int Vi; } ;
typedef TYPE_1__ mbedtls_dhm_context ;


 int MBEDTLS_ERR_DHM_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_DHM_CALC_SECRET_FAILED ;
 int MBEDTLS_MPI_CHK (int ) ;
 int dhm_check_range (int *,int *) ;
 int dhm_update_blinding (TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*) ;
 int mbedtls_mpi_copy (int *,int *) ;
 int mbedtls_mpi_exp_mod (int *,int *,int *,int *,int *) ;
 int mbedtls_mpi_free (int *) ;
 int mbedtls_mpi_init (int *) ;
 int mbedtls_mpi_mod_mpi (int *,int *,int *) ;
 int mbedtls_mpi_mul_mpi (int *,int *,int *) ;
 size_t mbedtls_mpi_size (int *) ;
 int mbedtls_mpi_write_binary (int *,unsigned char*,size_t) ;

int mbedtls_dhm_calc_secret( mbedtls_dhm_context *ctx,
                     unsigned char *output, size_t output_size, size_t *olen,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng )
{
    int ret;
    mbedtls_mpi GYb;

    if( ctx == ((void*)0) || output_size < ctx->len )
        return( MBEDTLS_ERR_DHM_BAD_INPUT_DATA );

    if( ( ret = dhm_check_range( &ctx->GY, &ctx->P ) ) != 0 )
        return( ret );

    mbedtls_mpi_init( &GYb );


    if( f_rng != ((void*)0) )
    {
        MBEDTLS_MPI_CHK( dhm_update_blinding( ctx, f_rng, p_rng ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &GYb, &ctx->GY, &ctx->Vi ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mod_mpi( &GYb, &GYb, &ctx->P ) );
    }
    else
        MBEDTLS_MPI_CHK( mbedtls_mpi_copy( &GYb, &ctx->GY ) );


    MBEDTLS_MPI_CHK( mbedtls_mpi_exp_mod( &ctx->K, &GYb, &ctx->X,
                          &ctx->P, &ctx->RP ) );


    if( f_rng != ((void*)0) )
    {
        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &ctx->K, &ctx->K, &ctx->Vf ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mod_mpi( &ctx->K, &ctx->K, &ctx->P ) );
    }

    *olen = mbedtls_mpi_size( &ctx->K );

    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( &ctx->K, output, *olen ) );

cleanup:
    mbedtls_mpi_free( &GYb );

    if( ret != 0 )
        return( MBEDTLS_ERR_DHM_CALC_SECRET_FAILED + ret );

    return( 0 );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int * p; } ;
struct TYPE_16__ {int RN; int N; int E; TYPE_3__ Vi; TYPE_3__ Vf; scalar_t__ len; } ;
typedef TYPE_1__ mbedtls_rsa_context ;


 int MBEDTLS_ERR_RSA_RNG_FAILED ;
 int MBEDTLS_MPI_CHK (int ) ;
 scalar_t__ mbedtls_mpi_cmp_int (TYPE_3__*,int) ;
 int mbedtls_mpi_exp_mod (TYPE_3__*,TYPE_3__*,int *,int *,int *) ;
 int mbedtls_mpi_fill_random (TYPE_3__*,scalar_t__,int (*) (void*,unsigned char*,size_t),void*) ;
 int mbedtls_mpi_gcd (TYPE_3__*,TYPE_3__*,int *) ;
 int mbedtls_mpi_inv_mod (TYPE_3__*,TYPE_3__*,int *) ;
 int mbedtls_mpi_mod_mpi (TYPE_3__*,TYPE_3__*,int *) ;
 int mbedtls_mpi_mul_mpi (TYPE_3__*,TYPE_3__*,TYPE_3__*) ;

__attribute__((used)) static int rsa_prepare_blinding( mbedtls_rsa_context *ctx,
                 int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    int ret, count = 0;

    if( ctx->Vf.p != ((void*)0) )
    {

        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &ctx->Vi, &ctx->Vi, &ctx->Vi ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mod_mpi( &ctx->Vi, &ctx->Vi, &ctx->N ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &ctx->Vf, &ctx->Vf, &ctx->Vf ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mod_mpi( &ctx->Vf, &ctx->Vf, &ctx->N ) );

        goto cleanup;
    }


    do {
        if( count++ > 10 )
            return( MBEDTLS_ERR_RSA_RNG_FAILED );

        MBEDTLS_MPI_CHK( mbedtls_mpi_fill_random( &ctx->Vf, ctx->len - 1, f_rng, p_rng ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_gcd( &ctx->Vi, &ctx->Vf, &ctx->N ) );
    } while( mbedtls_mpi_cmp_int( &ctx->Vi, 1 ) != 0 );


    MBEDTLS_MPI_CHK( mbedtls_mpi_inv_mod( &ctx->Vi, &ctx->Vf, &ctx->N ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_exp_mod( &ctx->Vi, &ctx->Vi, &ctx->E, &ctx->N, &ctx->RN ) );


cleanup:
    return( ret );
}

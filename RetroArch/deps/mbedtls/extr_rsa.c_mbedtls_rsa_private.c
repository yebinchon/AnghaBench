
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


struct TYPE_31__ {int * p; } ;
struct TYPE_30__ {size_t len; int mutex; TYPE_2__ N; TYPE_2__ Vf; TYPE_2__ Q; TYPE_2__ P; TYPE_2__ QP; int RQ; int RP; int RN; TYPE_2__ DQ; TYPE_2__ DP; TYPE_2__ D; TYPE_2__ Vi; } ;
typedef TYPE_1__ mbedtls_rsa_context ;
typedef TYPE_2__ mbedtls_mpi ;


 int MBEDTLS_ERR_MPI_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_RSA_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_RSA_PRIVATE_FAILED ;
 int MBEDTLS_ERR_THREADING_MUTEX_ERROR ;
 int MBEDTLS_MPI_CHK (int ) ;
 int RSA_EXPONENT_BLINDING ;
 int mbedtls_mpi_add_mpi (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 scalar_t__ mbedtls_mpi_cmp_mpi (TYPE_2__*,TYPE_2__*) ;
 int mbedtls_mpi_exp_mod (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,int *) ;
 int mbedtls_mpi_fill_random (TYPE_2__*,int ,int (*) (void*,unsigned char*,size_t),void*) ;
 int mbedtls_mpi_free (TYPE_2__*) ;
 int mbedtls_mpi_init (TYPE_2__*) ;
 int mbedtls_mpi_mod_mpi (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int mbedtls_mpi_mul_mpi (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int mbedtls_mpi_read_binary (TYPE_2__*,unsigned char const*,size_t) ;
 int mbedtls_mpi_sub_int (TYPE_2__*,TYPE_2__*,int) ;
 int mbedtls_mpi_sub_mpi (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int mbedtls_mpi_write_binary (TYPE_2__*,unsigned char*,size_t) ;
 int mbedtls_mutex_lock (int *) ;
 scalar_t__ mbedtls_mutex_unlock (int *) ;
 int rsa_prepare_blinding (TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*) ;

int mbedtls_rsa_private( mbedtls_rsa_context *ctx,
                 int (*f_rng)(void *, unsigned char *, size_t),
                 void *p_rng,
                 const unsigned char *input,
                 unsigned char *output )
{
    int ret;
    size_t olen;
    mbedtls_mpi T, T1, T2;
    mbedtls_mpi P1, Q1, R;




    mbedtls_mpi DP_blind, DQ_blind;
    mbedtls_mpi *DP = &ctx->DP;
    mbedtls_mpi *DQ = &ctx->DQ;



    if( ctx->P.p == ((void*)0) || ctx->Q.p == ((void*)0) || ctx->D.p == ((void*)0) )
        return( MBEDTLS_ERR_RSA_BAD_INPUT_DATA );

    mbedtls_mpi_init( &T ); mbedtls_mpi_init( &T1 ); mbedtls_mpi_init( &T2 );
    mbedtls_mpi_init( &P1 ); mbedtls_mpi_init( &Q1 ); mbedtls_mpi_init( &R );


    if( f_rng != ((void*)0) )
    {



        mbedtls_mpi_init( &DP_blind );
        mbedtls_mpi_init( &DQ_blind );

    }







    MBEDTLS_MPI_CHK( mbedtls_mpi_read_binary( &T, input, ctx->len ) );
    if( mbedtls_mpi_cmp_mpi( &T, &ctx->N ) >= 0 )
    {
        ret = MBEDTLS_ERR_MPI_BAD_INPUT_DATA;
        goto cleanup;
    }

    if( f_rng != ((void*)0) )
    {




        MBEDTLS_MPI_CHK( rsa_prepare_blinding( ctx, f_rng, p_rng ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &T, &T, &ctx->Vi ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mod_mpi( &T, &T, &ctx->N ) );




        MBEDTLS_MPI_CHK( mbedtls_mpi_sub_int( &P1, &ctx->P, 1 ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_sub_int( &Q1, &ctx->Q, 1 ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_fill_random( &R, RSA_EXPONENT_BLINDING,
                         f_rng, p_rng ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &DP_blind, &P1, &R ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_add_mpi( &DP_blind, &DP_blind,
                    &ctx->DP ) );

        DP = &DP_blind;




        MBEDTLS_MPI_CHK( mbedtls_mpi_fill_random( &R, RSA_EXPONENT_BLINDING,
                         f_rng, p_rng ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &DQ_blind, &Q1, &R ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_add_mpi( &DQ_blind, &DQ_blind,
                    &ctx->DQ ) );

        DQ = &DQ_blind;

    }
    MBEDTLS_MPI_CHK( mbedtls_mpi_exp_mod( &T1, &T, DP, &ctx->P, &ctx->RP ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_exp_mod( &T2, &T, DQ, &ctx->Q, &ctx->RQ ) );




    MBEDTLS_MPI_CHK( mbedtls_mpi_sub_mpi( &T, &T1, &T2 ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &T1, &T, &ctx->QP ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_mod_mpi( &T, &T1, &ctx->P ) );




    MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &T1, &T, &ctx->Q ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_add_mpi( &T, &T2, &T1 ) );


    if( f_rng != ((void*)0) )
    {




        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &T, &T, &ctx->Vf ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mod_mpi( &T, &T, &ctx->N ) );
    }

    olen = ctx->len;
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( &T, output, olen ) );

cleanup:





    mbedtls_mpi_free( &T ); mbedtls_mpi_free( &T1 ); mbedtls_mpi_free( &T2 );
    mbedtls_mpi_free( &P1 ); mbedtls_mpi_free( &Q1 ); mbedtls_mpi_free( &R );

    if( f_rng != ((void*)0) )
    {



        mbedtls_mpi_free( &DP_blind );
        mbedtls_mpi_free( &DQ_blind );

    }

    if( ret != 0 )
        return( MBEDTLS_ERR_RSA_PRIVATE_FAILED + ret );

    return( 0 );
}

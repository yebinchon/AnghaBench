#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
struct TYPE_31__ {int /*<<< orphan*/ * p; } ;
struct TYPE_30__ {size_t len; int /*<<< orphan*/  mutex; TYPE_2__ N; TYPE_2__ Vf; TYPE_2__ Q; TYPE_2__ P; TYPE_2__ QP; int /*<<< orphan*/  RQ; int /*<<< orphan*/  RP; int /*<<< orphan*/  RN; TYPE_2__ DQ; TYPE_2__ DP; TYPE_2__ D; TYPE_2__ Vi; } ;
typedef  TYPE_1__ mbedtls_rsa_context ;
typedef  TYPE_2__ mbedtls_mpi ;

/* Variables and functions */
 int MBEDTLS_ERR_MPI_BAD_INPUT_DATA ; 
 int MBEDTLS_ERR_RSA_BAD_INPUT_DATA ; 
 int MBEDTLS_ERR_RSA_PRIVATE_FAILED ; 
 int MBEDTLS_ERR_THREADING_MUTEX_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RSA_EXPONENT_BLINDING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int (*) (void*,unsigned char*,size_t),void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,unsigned char*,size_t) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*) ; 

int FUNC16( mbedtls_rsa_context *ctx,
                 int (*f_rng)(void *, unsigned char *, size_t),
                 void *p_rng,
                 const unsigned char *input,
                 unsigned char *output )
{
    int ret;
    size_t olen;
    mbedtls_mpi T, T1, T2;
    mbedtls_mpi P1, Q1, R;
#if defined(MBEDTLS_RSA_NO_CRT)
    mbedtls_mpi D_blind;
    mbedtls_mpi *D = &ctx->D;
#else
    mbedtls_mpi DP_blind, DQ_blind;
    mbedtls_mpi *DP = &ctx->DP;
    mbedtls_mpi *DQ = &ctx->DQ;
#endif

    /* Make sure we have private key info, prevent possible misuse */
    if( ctx->P.p == NULL || ctx->Q.p == NULL || ctx->D.p == NULL )
        return( MBEDTLS_ERR_RSA_BAD_INPUT_DATA );

    FUNC6( &T ); FUNC6( &T1 ); FUNC6( &T2 );
    FUNC6( &P1 ); FUNC6( &Q1 ); FUNC6( &R );


    if( f_rng != NULL )
    {
#if defined(MBEDTLS_RSA_NO_CRT)
        mbedtls_mpi_init( &D_blind );
#else
        FUNC6( &DP_blind );
        FUNC6( &DQ_blind );
#endif
    }


#if defined(MBEDTLS_THREADING_C)
    if( ( ret = mbedtls_mutex_lock( &ctx->mutex ) ) != 0 )
        return( ret );
#endif

    FUNC0( FUNC9( &T, input, ctx->len ) );
    if( FUNC2( &T, &ctx->N ) >= 0 )
    {
        ret = MBEDTLS_ERR_MPI_BAD_INPUT_DATA;
        goto cleanup;
    }

    if( f_rng != NULL )
    {
        /*
         * Blinding
         * T = T * Vi mod N
         */
        FUNC0( FUNC15( ctx, f_rng, p_rng ) );
        FUNC0( FUNC8( &T, &T, &ctx->Vi ) );
        FUNC0( FUNC7( &T, &T, &ctx->N ) );

        /*
         * Exponent blinding
         */
        FUNC0( FUNC10( &P1, &ctx->P, 1 ) );
        FUNC0( FUNC10( &Q1, &ctx->Q, 1 ) );

#if defined(MBEDTLS_RSA_NO_CRT)
        /*
         * D_blind = ( P - 1 ) * ( Q - 1 ) * R + D
         */
        MBEDTLS_MPI_CHK( mbedtls_mpi_fill_random( &R, RSA_EXPONENT_BLINDING,
                         f_rng, p_rng ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &D_blind, &P1, &Q1 ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &D_blind, &D_blind, &R ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_add_mpi( &D_blind, &D_blind, &ctx->D ) );

        D = &D_blind;
#else
        /*
         * DP_blind = ( P - 1 ) * R + DP
         */
        FUNC0( FUNC4( &R, RSA_EXPONENT_BLINDING,
                         f_rng, p_rng ) );
        FUNC0( FUNC8( &DP_blind, &P1, &R ) );
        FUNC0( FUNC1( &DP_blind, &DP_blind,
                    &ctx->DP ) );

        DP = &DP_blind;

        /*
         * DQ_blind = ( Q - 1 ) * R + DQ
         */
        FUNC0( FUNC4( &R, RSA_EXPONENT_BLINDING,
                         f_rng, p_rng ) );
        FUNC0( FUNC8( &DQ_blind, &Q1, &R ) );
        FUNC0( FUNC1( &DQ_blind, &DQ_blind,
                    &ctx->DQ ) );

        DQ = &DQ_blind;
#endif /* MBEDTLS_RSA_NO_CRT */
    }

#if defined(MBEDTLS_RSA_NO_CRT)
    MBEDTLS_MPI_CHK( mbedtls_mpi_exp_mod( &T, &T, D, &ctx->N, &ctx->RN ) );
#else
    /*
     * Faster decryption using the CRT
     *
     * T1 = input ^ dP mod P
     * T2 = input ^ dQ mod Q
     */
    FUNC0( FUNC3( &T1, &T, DP, &ctx->P, &ctx->RP ) );
    FUNC0( FUNC3( &T2, &T, DQ, &ctx->Q, &ctx->RQ ) );

    /*
     * T = (T1 - T2) * (Q^-1 mod P) mod P
     */
    FUNC0( FUNC11( &T, &T1, &T2 ) );
    FUNC0( FUNC8( &T1, &T, &ctx->QP ) );
    FUNC0( FUNC7( &T, &T1, &ctx->P ) );

    /*
     * T = T2 + T * Q
     */
    FUNC0( FUNC8( &T1, &T, &ctx->Q ) );
    FUNC0( FUNC1( &T, &T2, &T1 ) );
#endif /* MBEDTLS_RSA_NO_CRT */

    if( f_rng != NULL )
    {
        /*
         * Unblind
         * T = T * Vf mod N
         */
        FUNC0( FUNC8( &T, &T, &ctx->Vf ) );
        FUNC0( FUNC7( &T, &T, &ctx->N ) );
    }

    olen = ctx->len;
    FUNC0( FUNC12( &T, output, olen ) );

cleanup:
#if defined(MBEDTLS_THREADING_C)
    if( mbedtls_mutex_unlock( &ctx->mutex ) != 0 )
        return( MBEDTLS_ERR_THREADING_MUTEX_ERROR );
#endif

    FUNC5( &T ); FUNC5( &T1 ); FUNC5( &T2 );
    FUNC5( &P1 ); FUNC5( &Q1 ); FUNC5( &R );

    if( f_rng != NULL )
    {
#if defined(MBEDTLS_RSA_NO_CRT)
        mbedtls_mpi_free( &D_blind );
#else
        FUNC5( &DP_blind );
        FUNC5( &DQ_blind );
#endif
    }

    if( ret != 0 )
        return( MBEDTLS_ERR_RSA_PRIVATE_FAILED + ret );

    return( 0 );
}
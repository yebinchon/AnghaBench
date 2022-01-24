#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int len; int /*<<< orphan*/  N; int /*<<< orphan*/  P; int /*<<< orphan*/  Q; int /*<<< orphan*/  QP; int /*<<< orphan*/  D; int /*<<< orphan*/  DQ; int /*<<< orphan*/  DP; int /*<<< orphan*/  E; } ;
typedef  TYPE_1__ mbedtls_rsa_context ;
typedef  int /*<<< orphan*/  mbedtls_mpi ;

/* Variables and functions */
 int MBEDTLS_ERR_RSA_BAD_INPUT_DATA ; 
 int MBEDTLS_ERR_RSA_KEY_GEN_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int (*) (void*,unsigned char*,size_t),void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

int FUNC15( mbedtls_rsa_context *ctx,
                 int (*f_rng)(void *, unsigned char *, size_t),
                 void *p_rng,
                 unsigned int nbits, int exponent )
{
    int ret;
    mbedtls_mpi P1, Q1, H, G;

    if( f_rng == NULL || nbits < 128 || exponent < 3 )
        return( MBEDTLS_ERR_RSA_BAD_INPUT_DATA );

    if( nbits % 2 )
        return( MBEDTLS_ERR_RSA_BAD_INPUT_DATA );

    FUNC7( &P1 ); FUNC7( &Q1 );
    FUNC7( &H ); FUNC7( &G );

    /*
     * find primes P and Q with Q < P so that:
     * GCD( E, (P-1)*(Q-1) ) == 1
     */
    FUNC0( FUNC9( &ctx->E, exponent ) );

    do
    {
        FUNC0( FUNC6( &ctx->P, nbits >> 1, 0,
                                f_rng, p_rng ) );

        FUNC0( FUNC6( &ctx->Q, nbits >> 1, 0,
                                f_rng, p_rng ) );

        if( FUNC3( &ctx->P, &ctx->Q ) == 0 )
            continue;

        FUNC0( FUNC11( &ctx->N, &ctx->P, &ctx->Q ) );
        if( FUNC1( &ctx->N ) != nbits )
            continue;

        if( FUNC3( &ctx->P, &ctx->Q ) < 0 )
                                FUNC13( &ctx->P, &ctx->Q );

        FUNC0( FUNC12( &P1, &ctx->P, 1 ) );
        FUNC0( FUNC12( &Q1, &ctx->Q, 1 ) );
        FUNC0( FUNC11( &H, &P1, &Q1 ) );
        FUNC0( FUNC5( &G, &ctx->E, &H  ) );
    }
    while( FUNC2( &G, 1 ) != 0 );

    /*
     * D  = E^-1 mod ((P-1)*(Q-1))
     * DP = D mod (P - 1)
     * DQ = D mod (Q - 1)
     * QP = Q^-1 mod P
     */
    FUNC0( FUNC8( &ctx->D , &ctx->E, &H  ) );
    FUNC0( FUNC10( &ctx->DP, &ctx->D, &P1 ) );
    FUNC0( FUNC10( &ctx->DQ, &ctx->D, &Q1 ) );
    FUNC0( FUNC8( &ctx->QP, &ctx->Q, &ctx->P ) );

    ctx->len = ( FUNC1( &ctx->N ) + 7 ) >> 3;

cleanup:

    FUNC4( &P1 ); FUNC4( &Q1 ); FUNC4( &H ); FUNC4( &G );

    if( ret != 0 )
    {
        FUNC14( ctx );
        return( MBEDTLS_ERR_RSA_KEY_GEN_FAILED + ret );
    }

    return( 0 );
}
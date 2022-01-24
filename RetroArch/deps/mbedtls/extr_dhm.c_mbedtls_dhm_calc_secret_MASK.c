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
typedef  int /*<<< orphan*/  mbedtls_mpi ;
struct TYPE_4__ {size_t len; int /*<<< orphan*/  K; int /*<<< orphan*/  P; int /*<<< orphan*/  Vf; int /*<<< orphan*/  RP; int /*<<< orphan*/  X; int /*<<< orphan*/  GY; int /*<<< orphan*/  Vi; } ;
typedef  TYPE_1__ mbedtls_dhm_context ;

/* Variables and functions */
 int MBEDTLS_ERR_DHM_BAD_INPUT_DATA ; 
 int MBEDTLS_ERR_DHM_CALC_SECRET_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int (*) (void*,unsigned char*,size_t),void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 

int FUNC11( mbedtls_dhm_context *ctx,
                     unsigned char *output, size_t output_size, size_t *olen,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng )
{
    int ret;
    mbedtls_mpi GYb;

    if( ctx == NULL || output_size < ctx->len )
        return( MBEDTLS_ERR_DHM_BAD_INPUT_DATA );

    if( ( ret = FUNC1( &ctx->GY, &ctx->P ) ) != 0 )
        return( ret );

    FUNC6( &GYb );

    /* Blind peer's value */
    if( f_rng != NULL )
    {
        FUNC0( FUNC2( ctx, f_rng, p_rng ) );
        FUNC0( FUNC8( &GYb, &ctx->GY, &ctx->Vi ) );
        FUNC0( FUNC7( &GYb, &GYb, &ctx->P ) );
    }
    else
        FUNC0( FUNC3( &GYb, &ctx->GY ) );

    /* Do modular exponentiation */
    FUNC0( FUNC4( &ctx->K, &GYb, &ctx->X,
                          &ctx->P, &ctx->RP ) );

    /* Unblind secret value */
    if( f_rng != NULL )
    {
        FUNC0( FUNC8( &ctx->K, &ctx->K, &ctx->Vf ) );
        FUNC0( FUNC7( &ctx->K, &ctx->K, &ctx->P ) );
    }

    *olen = FUNC9( &ctx->K );

    FUNC0( FUNC10( &ctx->K, output, *olen ) );

cleanup:
    FUNC5( &GYb );

    if( ret != 0 )
        return( MBEDTLS_ERR_DHM_CALC_SECRET_FAILED + ret );

    return( 0 );
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  RP; int /*<<< orphan*/  P; int /*<<< orphan*/  X; int /*<<< orphan*/  Vf; int /*<<< orphan*/  Vi; int /*<<< orphan*/  pX; } ;
typedef  TYPE_1__ mbedtls_dhm_context ;

/* Variables and functions */
 int MBEDTLS_ERR_MPI_NOT_ACCEPTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int (*) (void*,unsigned char*,size_t),void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12( mbedtls_dhm_context *ctx,
                    int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    int ret, count;

    /*
     * Don't use any blinding the first time a particular X is used,
     * but remember it to use blinding next time.
     */
    if( FUNC2( &ctx->X, &ctx->pX ) != 0 )
    {
        FUNC0( FUNC3( &ctx->pX, &ctx->X ) );
        FUNC0( FUNC7( &ctx->Vi, 1 ) );
        FUNC0( FUNC7( &ctx->Vf, 1 ) );

        return( 0 );
    }

    /*
     * Ok, we need blinding. Can we re-use existing values?
     * If yes, just update them by squaring them.
     */
    if( FUNC1( &ctx->Vi, 1 ) != 0 )
    {
        FUNC0( FUNC9( &ctx->Vi, &ctx->Vi, &ctx->Vi ) );
        FUNC0( FUNC8( &ctx->Vi, &ctx->Vi, &ctx->P ) );

        FUNC0( FUNC9( &ctx->Vf, &ctx->Vf, &ctx->Vf ) );
        FUNC0( FUNC8( &ctx->Vf, &ctx->Vf, &ctx->P ) );

        return( 0 );
    }

    /*
     * We need to generate blinding values from scratch
     */

    /* Vi = random( 2, P-1 ) */
    count = 0;
    do
    {
        FUNC0( FUNC5( &ctx->Vi, FUNC11( &ctx->P ), f_rng, p_rng ) );

        while( FUNC2( &ctx->Vi, &ctx->P ) >= 0 )
            FUNC0( FUNC10( &ctx->Vi, 1 ) );

        if( count++ > 10 )
            return( MBEDTLS_ERR_MPI_NOT_ACCEPTABLE );
    }
    while( FUNC1( &ctx->Vi, 1 ) <= 0 );

    /* Vf = Vi^-X mod P */
    FUNC0( FUNC6( &ctx->Vf, &ctx->Vi, &ctx->P ) );
    FUNC0( FUNC4( &ctx->Vf, &ctx->Vf, &ctx->X, &ctx->P, &ctx->RP ) );

cleanup:
    return( ret );
}
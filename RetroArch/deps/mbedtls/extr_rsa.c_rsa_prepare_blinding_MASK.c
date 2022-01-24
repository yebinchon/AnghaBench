#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/ * p; } ;
struct TYPE_16__ {int /*<<< orphan*/  RN; int /*<<< orphan*/  N; int /*<<< orphan*/  E; TYPE_3__ Vi; TYPE_3__ Vf; scalar_t__ len; } ;
typedef  TYPE_1__ mbedtls_rsa_context ;

/* Variables and functions */
 int MBEDTLS_ERR_RSA_RNG_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__,int (*) (void*,unsigned char*,size_t),void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_3__*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC8( mbedtls_rsa_context *ctx,
                 int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    int ret, count = 0;

    if( ctx->Vf.p != NULL )
    {
        /* We already have blinding values, just update them by squaring */
        FUNC0( FUNC7( &ctx->Vi, &ctx->Vi, &ctx->Vi ) );
        FUNC0( FUNC6( &ctx->Vi, &ctx->Vi, &ctx->N ) );
        FUNC0( FUNC7( &ctx->Vf, &ctx->Vf, &ctx->Vf ) );
        FUNC0( FUNC6( &ctx->Vf, &ctx->Vf, &ctx->N ) );

        goto cleanup;
    }

    /* Unblinding value: Vf = random number, invertible mod N */
    do {
        if( count++ > 10 )
            return( MBEDTLS_ERR_RSA_RNG_FAILED );

        FUNC0( FUNC3( &ctx->Vf, ctx->len - 1, f_rng, p_rng ) );
        FUNC0( FUNC4( &ctx->Vi, &ctx->Vf, &ctx->N ) );
    } while( FUNC1( &ctx->Vi, 1 ) != 0 );

    /* Blinding value: Vi =  Vf^(-e) mod N */
    FUNC0( FUNC5( &ctx->Vi, &ctx->Vf, &ctx->N ) );
    FUNC0( FUNC2( &ctx->Vi, &ctx->Vi, &ctx->E, &ctx->N, &ctx->RN ) );


cleanup:
    return( ret );
}
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
struct TYPE_3__ {size_t len; int /*<<< orphan*/  GX; int /*<<< orphan*/  P; int /*<<< orphan*/  RP; int /*<<< orphan*/  X; int /*<<< orphan*/  G; } ;
typedef  TYPE_1__ mbedtls_dhm_context ;

/* Variables and functions */
 int MBEDTLS_ERR_DHM_BAD_INPUT_DATA ; 
 int MBEDTLS_ERR_DHM_MAKE_PUBLIC_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int (*) (void*,unsigned char*,size_t),void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 

int FUNC8( mbedtls_dhm_context *ctx, int x_size,
                     unsigned char *output, size_t olen,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng )
{
    int ret, count = 0;

    if( ctx == NULL || olen < 1 || olen > ctx->len )
        return( MBEDTLS_ERR_DHM_BAD_INPUT_DATA );

    if( FUNC2( &ctx->P, 0 ) == 0 )
        return( MBEDTLS_ERR_DHM_BAD_INPUT_DATA );

    /*
     * generate X and calculate GX = G^X mod P
     */
    do
    {
        FUNC0( FUNC5( &ctx->X, x_size, f_rng, p_rng ) );

        while( FUNC3( &ctx->X, &ctx->P ) >= 0 )
            FUNC0( FUNC6( &ctx->X, 1 ) );

        if( count++ > 10 )
            return( MBEDTLS_ERR_DHM_MAKE_PUBLIC_FAILED );
    }
    while( FUNC1( &ctx->X, &ctx->P ) != 0 );

    FUNC0( FUNC4( &ctx->GX, &ctx->G, &ctx->X,
                          &ctx->P , &ctx->RP ) );

    if( ( ret = FUNC1( &ctx->GX, &ctx->P ) ) != 0 )
        return( ret );

    FUNC0( FUNC7( &ctx->GX, output, olen ) );

cleanup:

    if( ret != 0 )
        return( MBEDTLS_ERR_DHM_MAKE_PUBLIC_FAILED + ret );

    return( 0 );
}
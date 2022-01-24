#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  md_info; } ;
struct TYPE_7__ {unsigned char const* V; TYPE_2__ md_ctx; } ;
typedef  TYPE_1__ mbedtls_hmac_drbg_context ;

/* Variables and functions */
 int MBEDTLS_MD_MAX_SIZE ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,unsigned char const*,size_t) ; 

void FUNC5( mbedtls_hmac_drbg_context *ctx,
                       const unsigned char *additional, size_t add_len )
{
    size_t md_len = FUNC0( ctx->md_ctx.md_info );
    unsigned char rounds = ( additional != NULL && add_len != 0 ) ? 2 : 1;
    unsigned char sep[1];
    unsigned char K[MBEDTLS_MD_MAX_SIZE];

    for( sep[0] = 0; sep[0] < rounds; sep[0]++ )
    {
        /* Step 1 or 4 */
        FUNC2( &ctx->md_ctx );
        FUNC4( &ctx->md_ctx, ctx->V, md_len );
        FUNC4( &ctx->md_ctx, sep, 1 );
        if( rounds == 2 )
            FUNC4( &ctx->md_ctx, additional, add_len );
        FUNC1( &ctx->md_ctx, K );

        /* Step 2 or 5 */
        FUNC3( &ctx->md_ctx, K, md_len );
        FUNC4( &ctx->md_ctx, ctx->V, md_len );
        FUNC1( &ctx->md_ctx, ctx->V );
    }
}
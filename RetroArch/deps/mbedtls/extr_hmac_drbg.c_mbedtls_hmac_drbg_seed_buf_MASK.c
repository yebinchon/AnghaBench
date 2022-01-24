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
typedef  int /*<<< orphan*/  mbedtls_md_info_t ;
struct TYPE_4__ {int /*<<< orphan*/  V; int /*<<< orphan*/  md_ctx; } ;
typedef  TYPE_1__ mbedtls_hmac_drbg_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC5( mbedtls_hmac_drbg_context *ctx,
                        const mbedtls_md_info_t * md_info,
                        const unsigned char *data, size_t data_len )
{
    int ret;

    if( ( ret = FUNC3( &ctx->md_ctx, md_info, 1 ) ) != 0 )
        return( ret );

    /*
     * Set initial working state.
     * Use the V memory location, which is currently all 0, to initialize the
     * MD context with an all-zero key. Then set V to its initial value.
     */
    FUNC2( &ctx->md_ctx, ctx->V, FUNC1( md_info ) );
    FUNC4( ctx->V, 0x01, FUNC1( md_info ) );

    FUNC0( ctx, data, data_len );

    return( 0 );
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* hmac_ctx; TYPE_1__* md_info; int /*<<< orphan*/ * md_ctx; } ;
typedef  TYPE_2__ mbedtls_md_context_t ;
struct TYPE_6__ {int block_size; int /*<<< orphan*/  (* ctx_free_func ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3( mbedtls_md_context_t *ctx )
{
    if( ctx == NULL || ctx->md_info == NULL )
        return;

    if( ctx->md_ctx != NULL )
        ctx->md_info->ctx_free_func( ctx->md_ctx );

    if( ctx->hmac_ctx != NULL )
    {
        FUNC1( ctx->hmac_ctx, 2 * ctx->md_info->block_size );
        FUNC0( ctx->hmac_ctx );
    }

    FUNC1( ctx, sizeof( mbedtls_md_context_t ) );
}
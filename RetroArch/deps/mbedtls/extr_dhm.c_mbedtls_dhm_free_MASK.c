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
struct TYPE_4__ {int /*<<< orphan*/  P; int /*<<< orphan*/  G; int /*<<< orphan*/  X; int /*<<< orphan*/  GX; int /*<<< orphan*/  GY; int /*<<< orphan*/  K; int /*<<< orphan*/  RP; int /*<<< orphan*/  Vi; int /*<<< orphan*/  Vf; int /*<<< orphan*/  pX; } ;
typedef  TYPE_1__ mbedtls_dhm_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

void FUNC2( mbedtls_dhm_context *ctx )
{
    FUNC0( &ctx->pX); FUNC0( &ctx->Vf ); FUNC0( &ctx->Vi );
    FUNC0( &ctx->RP ); FUNC0( &ctx->K ); FUNC0( &ctx->GY );
    FUNC0( &ctx->GX ); FUNC0( &ctx->X ); FUNC0( &ctx->G );
    FUNC0( &ctx->P );

    FUNC1( ctx, sizeof( mbedtls_dhm_context ) );
}
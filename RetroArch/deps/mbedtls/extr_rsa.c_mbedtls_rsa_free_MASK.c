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
struct TYPE_3__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  N; int /*<<< orphan*/  E; int /*<<< orphan*/  D; int /*<<< orphan*/  P; int /*<<< orphan*/  Q; int /*<<< orphan*/  DP; int /*<<< orphan*/  DQ; int /*<<< orphan*/  QP; int /*<<< orphan*/  RN; int /*<<< orphan*/  RP; int /*<<< orphan*/  RQ; int /*<<< orphan*/  Vf; int /*<<< orphan*/  Vi; } ;
typedef  TYPE_1__ mbedtls_rsa_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2( mbedtls_rsa_context *ctx )
{
    FUNC0( &ctx->Vi ); FUNC0( &ctx->Vf );
    FUNC0( &ctx->RQ ); FUNC0( &ctx->RP ); FUNC0( &ctx->RN );
    FUNC0( &ctx->QP ); FUNC0( &ctx->DQ ); FUNC0( &ctx->DP );
    FUNC0( &ctx->Q  ); FUNC0( &ctx->P  ); FUNC0( &ctx->D );
    FUNC0( &ctx->E  ); FUNC0( &ctx->N  );

#if defined(MBEDTLS_THREADING_C)
    mbedtls_mutex_free( &ctx->mutex );
#endif
}
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
struct TYPE_4__ {int /*<<< orphan*/  riceX; int /*<<< orphan*/ * decoded; int /*<<< orphan*/  gb; int /*<<< orphan*/  riceY; } ;
typedef  TYPE_1__ APEContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC1(APEContext *ctx, int blockstodecode)
{
    FUNC0(ctx, &ctx->gb, ctx->decoded[0], &ctx->riceY,
                      blockstodecode);
    FUNC0(ctx, &ctx->gb, ctx->decoded[1], &ctx->riceX,
                      blockstodecode);
}
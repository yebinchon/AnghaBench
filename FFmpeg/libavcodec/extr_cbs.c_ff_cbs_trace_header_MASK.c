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
struct TYPE_3__ {int /*<<< orphan*/  trace_level; int /*<<< orphan*/  log_ctx; int /*<<< orphan*/  trace_enable; } ;
typedef  TYPE_1__ CodedBitstreamContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 

void FUNC1(CodedBitstreamContext *ctx,
                         const char *name)
{
    if (!ctx->trace_enable)
        return;

    FUNC0(ctx->log_ctx, ctx->trace_level, "%s\n", name);
}
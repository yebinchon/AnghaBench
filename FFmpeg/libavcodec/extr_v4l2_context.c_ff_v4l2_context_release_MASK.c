#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * buffers; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ V4L2Context ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 

void FUNC4(V4L2Context* ctx)
{
    int ret;

    if (!ctx->buffers)
        return;

    ret = FUNC3(ctx);
    if (ret)
        FUNC1(FUNC2(ctx), AV_LOG_WARNING, "V4L2 failed to unmap the %s buffers\n", ctx->name);

    FUNC0(ctx->buffers);
    ctx->buffers = NULL;
}
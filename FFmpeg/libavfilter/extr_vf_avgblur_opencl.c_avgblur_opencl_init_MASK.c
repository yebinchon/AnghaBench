#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cl_int ;
struct TYPE_10__ {TYPE_3__* priv; } ;
struct TYPE_8__ {int /*<<< orphan*/  program; TYPE_1__* hwctx; } ;
struct TYPE_9__ {int initialised; void* kernel_vert; void* kernel_horiz; scalar_t__ command_queue; TYPE_2__ ocf; } ;
struct TYPE_7__ {int /*<<< orphan*/  device_id; int /*<<< orphan*/  context; } ;
typedef  TYPE_3__ AverageBlurOpenCLContext ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ff_opencl_source_avgblur ; 

__attribute__((used)) static int FUNC7(AVFilterContext *avctx)
{
    AverageBlurOpenCLContext *ctx = avctx->priv;
    cl_int cle;
    int err;

    err = FUNC6(avctx, &ff_opencl_source_avgblur, 1);
    if (err < 0)
        goto fail;

    ctx->command_queue = FUNC2(ctx->ocf.hwctx->context,
                                              ctx->ocf.hwctx->device_id,
                                              0, &cle);
    FUNC1(FUNC0(EIO), "Failed to create OpenCL "
                     "command queue %d.\n", cle);

    ctx->kernel_horiz = FUNC3(ctx->ocf.program,"avgblur_horiz", &cle);
    FUNC1(FUNC0(EIO), "Failed to create horizontal "
                     "kernel %d.\n", cle);

    ctx->kernel_vert = FUNC3(ctx->ocf.program,"avgblur_vert", &cle);
    FUNC1(FUNC0(EIO), "Failed to create vertical "
                     "kernel %d.\n", cle);

    ctx->initialised = 1;
    return 0;

fail:
    if (ctx->command_queue)
        FUNC4(ctx->command_queue);
    if (ctx->kernel_horiz)
        FUNC5(ctx->kernel_horiz);
    if (ctx->kernel_vert)
        FUNC5(ctx->kernel_vert);
    return err;
}
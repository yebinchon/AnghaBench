#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ data; } ;
struct TYPE_15__ {int /*<<< orphan*/  hw_device_ctx; TYPE_1__* priv; } ;
struct TYPE_14__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_5__* hw_frames_ctx; TYPE_4__* src; } ;
struct TYPE_13__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  sw_format; int /*<<< orphan*/  format; } ;
struct TYPE_12__ {int /*<<< orphan*/  output_height; int /*<<< orphan*/  output_width; int /*<<< orphan*/  output_format; int /*<<< orphan*/  device_ref; } ;
typedef  TYPE_1__ OpenCLFilterContext ;
typedef  TYPE_2__ AVHWFramesContext ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;
typedef  TYPE_5__ AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PIX_FMT_OPENCL ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__**) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 

int FUNC6(AVFilterLink *outlink)
{
    AVFilterContext   *avctx = outlink->src;
    OpenCLFilterContext *ctx = avctx->priv;
    AVBufferRef       *output_frames_ref = NULL;
    AVHWFramesContext *output_frames;
    int err;

    FUNC1(&outlink->hw_frames_ctx);

    if (!ctx->device_ref) {
        if (!avctx->hw_device_ctx) {
            FUNC4(avctx, AV_LOG_ERROR, "OpenCL filtering requires an "
                   "OpenCL device.\n");
            return FUNC0(EINVAL);
        }

        err = FUNC5(avctx, avctx->hw_device_ctx);
        if (err < 0)
            return err;
    }

    output_frames_ref = FUNC2(ctx->device_ref);
    if (!output_frames_ref) {
        err = FUNC0(ENOMEM);
        goto fail;
    }
    output_frames = (AVHWFramesContext*)output_frames_ref->data;

    output_frames->format    = AV_PIX_FMT_OPENCL;
    output_frames->sw_format = ctx->output_format;
    output_frames->width     = ctx->output_width;
    output_frames->height    = ctx->output_height;

    err = FUNC3(output_frames_ref);
    if (err < 0) {
        FUNC4(avctx, AV_LOG_ERROR, "Failed to initialise output "
               "frames: %d.\n", err);
        goto fail;
    }

    outlink->hw_frames_ctx = output_frames_ref;
    outlink->w = ctx->output_width;
    outlink->h = ctx->output_height;

    return 0;
fail:
    FUNC1(&output_frames_ref);
    return err;
}
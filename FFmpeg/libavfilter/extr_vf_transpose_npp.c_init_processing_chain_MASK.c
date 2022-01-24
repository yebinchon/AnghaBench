#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_21__ {int stage_needed; int in_fmt; int out_fmt; TYPE_11__* frames_ctx; TYPE_2__* planes_out; TYPE_1__* planes_in; } ;
struct TYPE_20__ {TYPE_4__** outputs; TYPE_3__** inputs; TYPE_5__* priv; } ;
struct TYPE_19__ {int sw_format; int /*<<< orphan*/  device_ref; } ;
struct TYPE_18__ {scalar_t__ dir; int passthrough; TYPE_8__* stages; } ;
struct TYPE_17__ {void* hw_frames_ctx; } ;
struct TYPE_16__ {TYPE_11__* hw_frames_ctx; } ;
struct TYPE_15__ {int width; int height; } ;
struct TYPE_14__ {int width; int height; } ;
struct TYPE_13__ {scalar_t__ data; } ;
typedef  TYPE_5__ NPPTransposeContext ;
typedef  TYPE_6__ AVHWFramesContext ;
typedef  TYPE_7__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 int FUNC1 (TYPE_8__*) ; 
 scalar_t__ NPP_TRANSPOSE_CCLOCK_FLIP ; 
 scalar_t__ NPP_TRANSPOSE_CLOCK_FLIP ; 
 size_t STAGE_ROTATE ; 
 size_t STAGE_TRANSPOSE ; 
 void* FUNC2 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (TYPE_8__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVFilterContext *ctx, int in_width, int in_height,
                                 int out_width, int out_height)
{
    NPPTransposeContext *s = ctx->priv;
    AVHWFramesContext *in_frames_ctx;
    enum AVPixelFormat format;
    int i, ret, last_stage = -1;
    int rot_width = out_width, rot_height = out_height;

    /* check that we have a hw context */
    if (!ctx->inputs[0]->hw_frames_ctx) {
        FUNC4(ctx, AV_LOG_ERROR, "No hw context provided on input\n");
        return FUNC0(EINVAL);
    }

    in_frames_ctx = (AVHWFramesContext*)ctx->inputs[0]->hw_frames_ctx->data;
    format        = in_frames_ctx->sw_format;

    if (!FUNC5(format)) {
        FUNC4(ctx, AV_LOG_ERROR, "Unsupported input format: %s\n",
               FUNC3(format));
        return FUNC0(ENOSYS);
    }

    if (s->dir != NPP_TRANSPOSE_CCLOCK_FLIP) {
        s->stages[STAGE_ROTATE].stage_needed = 1;
    }

    if (s->dir == NPP_TRANSPOSE_CCLOCK_FLIP || s->dir == NPP_TRANSPOSE_CLOCK_FLIP) {
        s->stages[STAGE_TRANSPOSE].stage_needed = 1;

        /* Rotating by 180° in case of clock_flip, or not at all for cclock_flip, so width/height unchanged by rotation */
        rot_width = in_width;
        rot_height = in_height;
    }

    s->stages[STAGE_ROTATE].in_fmt               = format;
    s->stages[STAGE_ROTATE].out_fmt              = format;
    s->stages[STAGE_ROTATE].planes_in[0].width   = in_width;
    s->stages[STAGE_ROTATE].planes_in[0].height  = in_height;
    s->stages[STAGE_ROTATE].planes_out[0].width  = rot_width;
    s->stages[STAGE_ROTATE].planes_out[0].height = rot_height;
    s->stages[STAGE_TRANSPOSE].in_fmt               = format;
    s->stages[STAGE_TRANSPOSE].out_fmt              = format;
    s->stages[STAGE_TRANSPOSE].planes_in[0].width   = rot_width;
    s->stages[STAGE_TRANSPOSE].planes_in[0].height  = rot_height;
    s->stages[STAGE_TRANSPOSE].planes_out[0].width  = out_width;
    s->stages[STAGE_TRANSPOSE].planes_out[0].height = out_height;

    /* init the hardware contexts */
    for (i = 0; i < FUNC1(s->stages); i++) {
        if (!s->stages[i].stage_needed)
            continue;
        ret = FUNC6(&s->stages[i], in_frames_ctx->device_ref);
        if (ret < 0)
            return ret;
        last_stage = i;
    }

    if (last_stage >= 0) {
        ctx->outputs[0]->hw_frames_ctx = FUNC2(s->stages[last_stage].frames_ctx);
    } else {
        ctx->outputs[0]->hw_frames_ctx = FUNC2(ctx->inputs[0]->hw_frames_ctx);
        s->passthrough = 1;
    }

    if (!ctx->outputs[0]->hw_frames_ctx)
        return FUNC0(ENOMEM);

    return 0;
}
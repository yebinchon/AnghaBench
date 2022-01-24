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
struct TYPE_21__ {int stage_needed; int in_fmt; int out_fmt; TYPE_11__* frames_ctx; TYPE_4__* planes_in; TYPE_3__* planes_out; } ;
struct TYPE_20__ {TYPE_1__** outputs; TYPE_2__** inputs; TYPE_5__* priv; } ;
struct TYPE_19__ {int sw_format; int /*<<< orphan*/  device_ref; } ;
struct TYPE_18__ {scalar_t__ format; scalar_t__ interp_algo; int passthrough; TYPE_8__* stages; } ;
struct TYPE_17__ {int width; int height; } ;
struct TYPE_16__ {int width; int height; } ;
struct TYPE_15__ {TYPE_11__* hw_frames_ctx; } ;
struct TYPE_14__ {void* hw_frames_ctx; } ;
struct TYPE_13__ {scalar_t__ data; } ;
typedef  TYPE_5__ NPPScaleContext ;
typedef  TYPE_6__ AVHWFramesContext ;
typedef  TYPE_7__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_BUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ AV_PIX_FMT_NONE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 int FUNC1 (TYPE_8__*) ; 
 scalar_t__ NPPI_INTER_CUBIC ; 
 scalar_t__ NPPI_INTER_LANCZOS ; 
 scalar_t__ NPPI_INTER_SUPER ; 
 size_t STAGE_DEINTERLEAVE ; 
 size_t STAGE_INTERLEAVE ; 
 size_t STAGE_RESIZE ; 
 void* FUNC2 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (TYPE_8__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVFilterContext *ctx, int in_width, int in_height,
                                 int out_width, int out_height)
{
    NPPScaleContext *s = ctx->priv;

    AVHWFramesContext *in_frames_ctx;

    enum AVPixelFormat in_format;
    enum AVPixelFormat out_format;
    enum AVPixelFormat in_deinterleaved_format;
    enum AVPixelFormat out_deinterleaved_format;

    int i, ret, last_stage = -1;

    /* check that we have a hw context */
    if (!ctx->inputs[0]->hw_frames_ctx) {
        FUNC4(ctx, AV_LOG_ERROR, "No hw context provided on input\n");
        return FUNC0(EINVAL);
    }
    in_frames_ctx = (AVHWFramesContext*)ctx->inputs[0]->hw_frames_ctx->data;
    in_format     = in_frames_ctx->sw_format;
    out_format    = (s->format == AV_PIX_FMT_NONE) ? in_format : s->format;

    if (!FUNC5(in_format)) {
        FUNC4(ctx, AV_LOG_ERROR, "Unsupported input format: %s\n",
               FUNC3(in_format));
        return FUNC0(ENOSYS);
    }
    if (!FUNC5(out_format)) {
        FUNC4(ctx, AV_LOG_ERROR, "Unsupported output format: %s\n",
               FUNC3(out_format));
        return FUNC0(ENOSYS);
    }

    in_deinterleaved_format  = FUNC6(in_format);
    out_deinterleaved_format = FUNC6(out_format);
    if (in_deinterleaved_format  == AV_PIX_FMT_NONE ||
        out_deinterleaved_format == AV_PIX_FMT_NONE)
        return AVERROR_BUG;

    /* figure out which stages need to be done */
    if (in_width != out_width || in_height != out_height ||
        in_deinterleaved_format != out_deinterleaved_format) {
        s->stages[STAGE_RESIZE].stage_needed = 1;

        if (s->interp_algo == NPPI_INTER_SUPER &&
            (out_width > in_width && out_height > in_height)) {
            s->interp_algo = NPPI_INTER_LANCZOS;
            FUNC4(ctx, AV_LOG_WARNING, "super-sampling not supported for output dimensions, using lanczos instead.\n");
        }
        if (s->interp_algo == NPPI_INTER_SUPER &&
            !(out_width < in_width && out_height < in_height)) {
            s->interp_algo = NPPI_INTER_CUBIC;
            FUNC4(ctx, AV_LOG_WARNING, "super-sampling not supported for output dimensions, using cubic instead.\n");
        }
    }

    if (!s->stages[STAGE_RESIZE].stage_needed && in_format == out_format)
        s->passthrough = 1;

    if (!s->passthrough) {
        if (in_format != in_deinterleaved_format)
            s->stages[STAGE_DEINTERLEAVE].stage_needed = 1;
        if (out_format != out_deinterleaved_format)
            s->stages[STAGE_INTERLEAVE].stage_needed = 1;
    }

    s->stages[STAGE_DEINTERLEAVE].in_fmt              = in_format;
    s->stages[STAGE_DEINTERLEAVE].out_fmt             = in_deinterleaved_format;
    s->stages[STAGE_DEINTERLEAVE].planes_in[0].width  = in_width;
    s->stages[STAGE_DEINTERLEAVE].planes_in[0].height = in_height;

    s->stages[STAGE_RESIZE].in_fmt               = in_deinterleaved_format;
    s->stages[STAGE_RESIZE].out_fmt              = out_deinterleaved_format;
    s->stages[STAGE_RESIZE].planes_in[0].width   = in_width;
    s->stages[STAGE_RESIZE].planes_in[0].height  = in_height;
    s->stages[STAGE_RESIZE].planes_out[0].width  = out_width;
    s->stages[STAGE_RESIZE].planes_out[0].height = out_height;

    s->stages[STAGE_INTERLEAVE].in_fmt              = out_deinterleaved_format;
    s->stages[STAGE_INTERLEAVE].out_fmt             = out_format;
    s->stages[STAGE_INTERLEAVE].planes_in[0].width  = out_width;
    s->stages[STAGE_INTERLEAVE].planes_in[0].height = out_height;

    /* init the hardware contexts */
    for (i = 0; i < FUNC1(s->stages); i++) {
        if (!s->stages[i].stage_needed)
            continue;

        ret = FUNC7(&s->stages[i], in_frames_ctx->device_ref);
        if (ret < 0)
            return ret;

        last_stage = i;
    }

    if (last_stage >= 0)
        ctx->outputs[0]->hw_frames_ctx = FUNC2(s->stages[last_stage].frames_ctx);
    else
        ctx->outputs[0]->hw_frames_ctx = FUNC2(ctx->inputs[0]->hw_frames_ctx);

    if (!ctx->outputs[0]->hw_frames_ctx)
        return FUNC0(ENOMEM);

    return 0;
}
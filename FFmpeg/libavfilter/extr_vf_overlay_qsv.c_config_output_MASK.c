#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_4__** inputs; TYPE_2__* priv; } ;
struct TYPE_13__ {scalar_t__ format; int /*<<< orphan*/  frame_rate; int /*<<< orphan*/  time_base; int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_1__* hw_frames_ctx; TYPE_5__* src; } ;
struct TYPE_12__ {scalar_t__ device_ctx; } ;
struct TYPE_11__ {int /*<<< orphan*/  qsv_param; int /*<<< orphan*/  qsv; int /*<<< orphan*/ * var_values; } ;
struct TYPE_10__ {scalar_t__ data; } ;
typedef  TYPE_2__ QSVOverlayContext ;
typedef  TYPE_3__ AVHWFramesContext ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PIX_FMT_QSV ; 
 int /*<<< orphan*/  EINVAL ; 
 size_t VAR_MH ; 
 size_t VAR_MW ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC6(AVFilterLink *outlink)
{
    AVFilterContext   *ctx = outlink->src;
    QSVOverlayContext *vpp = ctx->priv;
    AVFilterLink      *in0 = ctx->inputs[0];
    AVFilterLink      *in1 = ctx->inputs[1];
    int ret;

    FUNC3(ctx, AV_LOG_DEBUG, "Output is of %s.\n", FUNC1(outlink->format));
    if ((in0->format == AV_PIX_FMT_QSV && in1->format != AV_PIX_FMT_QSV) ||
        (in0->format != AV_PIX_FMT_QSV && in1->format == AV_PIX_FMT_QSV)) {
        FUNC3(ctx, AV_LOG_ERROR, "Mixing hardware and software pixel formats is not supported.\n");
        return FUNC0(EINVAL);
    } else if (in0->format == AV_PIX_FMT_QSV) {
        AVHWFramesContext *hw_frame0 = (AVHWFramesContext *)in0->hw_frames_ctx->data;
        AVHWFramesContext *hw_frame1 = (AVHWFramesContext *)in1->hw_frames_ctx->data;

        if (hw_frame0->device_ctx != hw_frame1->device_ctx) {
            FUNC3(ctx, AV_LOG_ERROR, "Inputs with different underlying QSV devices are forbidden.\n");
            return FUNC0(EINVAL);
        }
    }

    outlink->w          = vpp->var_values[VAR_MW];
    outlink->h          = vpp->var_values[VAR_MH];
    outlink->frame_rate = in0->frame_rate;
    outlink->time_base  = FUNC2(outlink->frame_rate);

    ret = FUNC5(ctx);
    if (ret < 0)
        return ret;

    return FUNC4(ctx, &vpp->qsv, &vpp->qsv_param);
}
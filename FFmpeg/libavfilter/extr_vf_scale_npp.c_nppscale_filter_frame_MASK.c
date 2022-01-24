#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_9__ ;
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_11__ ;
typedef  struct TYPE_21__   TYPE_10__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_31__ {int h; int w; TYPE_1__* hw_frames_ctx; TYPE_10__* dst; } ;
struct TYPE_27__ {scalar_t__ den; scalar_t__ num; } ;
struct TYPE_30__ {TYPE_5__ sample_aspect_ratio; } ;
struct TYPE_29__ {TYPE_2__* device_ctx; } ;
struct TYPE_28__ {scalar_t__ passthrough; } ;
struct TYPE_26__ {TYPE_3__* cuda_dl; } ;
struct TYPE_25__ {int /*<<< orphan*/  (* cuCtxPopCurrent ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* cuCtxPushCurrent ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_24__ {TYPE_11__* hwctx; } ;
struct TYPE_23__ {scalar_t__ data; } ;
struct TYPE_22__ {TYPE_4__* internal; int /*<<< orphan*/  cuda_ctx; } ;
struct TYPE_21__ {TYPE_9__** outputs; TYPE_6__* priv; } ;
typedef  TYPE_6__ NPPScaleContext ;
typedef  int /*<<< orphan*/  CUcontext ;
typedef  TYPE_7__ AVHWFramesContext ;
typedef  TYPE_8__ AVFrame ;
typedef  TYPE_9__ AVFilterLink ;
typedef  TYPE_10__ AVFilterContext ;
typedef  TYPE_11__ AVCUDADeviceContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  INT_MAX ; 
 TYPE_8__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__**) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_9__*,TYPE_8__*) ; 
 int FUNC6 (TYPE_10__*,TYPE_8__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(AVFilterLink *link, AVFrame *in)
{
    AVFilterContext              *ctx = link->dst;
    NPPScaleContext                *s = ctx->priv;
    AVFilterLink             *outlink = ctx->outputs[0];
    AVHWFramesContext     *frames_ctx = (AVHWFramesContext*)outlink->hw_frames_ctx->data;
    AVCUDADeviceContext *device_hwctx = frames_ctx->device_ctx->hwctx;

    AVFrame *out = NULL;
    CUcontext dummy;
    int ret = 0;

    if (s->passthrough)
        return FUNC5(outlink, in);

    out = FUNC2();
    if (!out) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    ret = FUNC1(device_hwctx->internal->cuda_dl->cuCtxPushCurrent(device_hwctx->cuda_ctx));
    if (ret < 0)
        goto fail;

    ret = FUNC6(ctx, out, in);

    FUNC1(device_hwctx->internal->cuda_dl->cuCtxPopCurrent(&dummy));
    if (ret < 0)
        goto fail;

    FUNC4(&out->sample_aspect_ratio.num, &out->sample_aspect_ratio.den,
              (int64_t)in->sample_aspect_ratio.num * outlink->h * link->w,
              (int64_t)in->sample_aspect_ratio.den * outlink->w * link->h,
              INT_MAX);

    FUNC3(&in);
    return FUNC5(outlink, out);
fail:
    FUNC3(&in);
    FUNC3(&out);
    return ret;
}
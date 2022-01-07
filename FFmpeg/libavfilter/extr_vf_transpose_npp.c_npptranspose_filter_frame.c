
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_21__ {TYPE_4__* internal; int cuda_ctx; } ;
struct TYPE_20__ {TYPE_7__** outputs; TYPE_5__* priv; } ;
struct TYPE_19__ {TYPE_1__* hw_frames_ctx; TYPE_8__* dst; } ;
struct TYPE_18__ {TYPE_2__* device_ctx; } ;
struct TYPE_17__ {scalar_t__ passthrough; } ;
struct TYPE_16__ {TYPE_3__* cuda_dl; } ;
struct TYPE_15__ {int (* cuCtxPopCurrent ) (int *) ;int (* cuCtxPushCurrent ) (int ) ;} ;
struct TYPE_14__ {TYPE_9__* hwctx; } ;
struct TYPE_13__ {scalar_t__ data; } ;
typedef TYPE_5__ NPPTransposeContext ;
typedef int CUcontext ;
typedef TYPE_6__ AVHWFramesContext ;
typedef int AVFrame ;
typedef TYPE_7__ AVFilterLink ;
typedef TYPE_8__ AVFilterContext ;
typedef TYPE_9__ AVCUDADeviceContext ;


 int AVERROR (int ) ;
 int CHECK_CU (int ) ;
 int ENOMEM ;
 int * av_frame_alloc () ;
 int av_frame_free (int **) ;
 int ff_filter_frame (TYPE_7__*,int *) ;
 int npptranspose_filter (TYPE_8__*,int *,int *) ;
 int stub1 (int ) ;
 int stub2 (int *) ;

__attribute__((used)) static int npptranspose_filter_frame(AVFilterLink *link, AVFrame *in)
{
    AVFilterContext *ctx = link->dst;
    NPPTransposeContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVHWFramesContext *frames_ctx = (AVHWFramesContext*)outlink->hw_frames_ctx->data;
    AVCUDADeviceContext *device_hwctx = frames_ctx->device_ctx->hwctx;
    AVFrame *out = ((void*)0);
    CUcontext dummy;
    int ret = 0;

    if (s->passthrough)
        return ff_filter_frame(outlink, in);

    out = av_frame_alloc();
    if (!out) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    ret = CHECK_CU(device_hwctx->internal->cuda_dl->cuCtxPushCurrent(device_hwctx->cuda_ctx));
    if (ret < 0)
        goto fail;

    ret = npptranspose_filter(ctx, out, in);

    CHECK_CU(device_hwctx->internal->cuda_dl->cuCtxPopCurrent(&dummy));
    if (ret < 0)
        goto fail;

    av_frame_free(&in);

    return ff_filter_frame(outlink, out);

fail:
    av_frame_free(&in);
    av_frame_free(&out);
    return ret;
}

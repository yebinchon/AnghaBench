
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_25__ {TYPE_7__** outputs; TYPE_5__* priv; } ;
struct TYPE_24__ {int h; int w; TYPE_8__* dst; } ;
struct TYPE_20__ {scalar_t__ den; scalar_t__ num; } ;
struct TYPE_23__ {TYPE_3__ sample_aspect_ratio; } ;
struct TYPE_22__ {TYPE_2__* hwctx; } ;
struct TYPE_21__ {int (* cuCtxPopCurrent ) (int *) ;int (* cuCtxPushCurrent ) (int ) ;} ;
struct TYPE_19__ {int cuda_ctx; TYPE_1__* internal; } ;
struct TYPE_18__ {TYPE_4__* cuda_dl; } ;
typedef TYPE_4__ CudaFunctions ;
typedef int CUcontext ;
typedef TYPE_5__ CUDAScaleContext ;
typedef TYPE_6__ AVFrame ;
typedef TYPE_7__ AVFilterLink ;
typedef TYPE_8__ AVFilterContext ;


 int AVERROR (int ) ;
 int CHECK_CU (int ) ;
 int ENOMEM ;
 int INT_MAX ;
 TYPE_6__* av_frame_alloc () ;
 int av_frame_free (TYPE_6__**) ;
 int av_reduce (scalar_t__*,scalar_t__*,int,int,int ) ;
 int cudascale_scale (TYPE_8__*,TYPE_6__*,TYPE_6__*) ;
 int ff_filter_frame (TYPE_7__*,TYPE_6__*) ;
 int stub1 (int ) ;
 int stub2 (int *) ;

__attribute__((used)) static int cudascale_filter_frame(AVFilterLink *link, AVFrame *in)
{
    AVFilterContext *ctx = link->dst;
    CUDAScaleContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    CudaFunctions *cu = s->hwctx->internal->cuda_dl;

    AVFrame *out = ((void*)0);
    CUcontext dummy;
    int ret = 0;

    out = av_frame_alloc();
    if (!out) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    ret = CHECK_CU(cu->cuCtxPushCurrent(s->hwctx->cuda_ctx));
    if (ret < 0)
        goto fail;

    ret = cudascale_scale(ctx, out, in);

    CHECK_CU(cu->cuCtxPopCurrent(&dummy));
    if (ret < 0)
        goto fail;

    av_reduce(&out->sample_aspect_ratio.num, &out->sample_aspect_ratio.den,
              (int64_t)in->sample_aspect_ratio.num * outlink->h * link->w,
              (int64_t)in->sample_aspect_ratio.den * outlink->w * link->h,
              INT_MAX);

    av_frame_free(&in);
    return ff_filter_frame(outlink, out);
fail:
    av_frame_free(&in);
    av_frame_free(&out);
    return ret;
}

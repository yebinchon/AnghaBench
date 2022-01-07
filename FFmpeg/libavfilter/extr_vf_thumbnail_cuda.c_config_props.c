
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_21__ {int tb; int hw_frames_ctx; int data; int cu_module; int cu_func_ushort2; int cu_func_ushort; int cu_func_uchar2; int cu_func_uchar; TYPE_11__* hwctx; int cu_stream; } ;
typedef TYPE_6__ ThumbnailCudaContext ;
struct TYPE_24__ {int time_base; TYPE_1__* hw_frames_ctx; TYPE_10__* dst; } ;
struct TYPE_23__ {int sw_format; TYPE_2__* device_ctx; } ;
struct TYPE_22__ {int (* cuCtxPopCurrent ) (int *) ;int (* cuMemAlloc ) (int *,int) ;int (* cuModuleGetFunction ) (int *,int ,char*) ;int (* cuModuleLoadData ) (int *,char*) ;int (* cuCtxPushCurrent ) (int ) ;} ;
struct TYPE_20__ {int hw_frames_ctx; } ;
struct TYPE_19__ {int hw_frames_ctx; } ;
struct TYPE_18__ {TYPE_7__* cuda_dl; } ;
struct TYPE_17__ {TYPE_11__* hwctx; } ;
struct TYPE_16__ {scalar_t__ data; } ;
struct TYPE_15__ {int stream; TYPE_3__* internal; int cuda_ctx; } ;
struct TYPE_14__ {TYPE_5__** outputs; TYPE_4__** inputs; TYPE_6__* priv; } ;
typedef TYPE_7__ CudaFunctions ;
typedef int CUcontext ;
typedef TYPE_8__ AVHWFramesContext ;
typedef TYPE_9__ AVFilterLink ;
typedef TYPE_10__ AVFilterContext ;
typedef TYPE_11__ AVCUDADeviceContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int CHECK_CU (int ) ;
 int ENOMEM ;
 int ENOSYS ;
 int HIST_SIZE ;
 int av_buffer_ref (int ) ;
 int av_get_pix_fmt_name (int ) ;
 int av_log (TYPE_10__*,int ,char*,int ) ;
 int format_is_supported (int ) ;
 int stub1 (int ) ;
 int stub2 (int *,char*) ;
 int stub3 (int *,int ,char*) ;
 int stub4 (int *,int ,char*) ;
 int stub5 (int *,int ,char*) ;
 int stub6 (int *,int ,char*) ;
 int stub7 (int *,int) ;
 int stub8 (int *) ;

__attribute__((used)) static int config_props(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    ThumbnailCudaContext *s = ctx->priv;
    AVHWFramesContext *hw_frames_ctx = (AVHWFramesContext*)inlink->hw_frames_ctx->data;
    AVCUDADeviceContext *device_hwctx = hw_frames_ctx->device_ctx->hwctx;
    CUcontext dummy, cuda_ctx = device_hwctx->cuda_ctx;
    CudaFunctions *cu = device_hwctx->internal->cuda_dl;
    int ret;

    extern char vf_thumbnail_cuda_ptx[];

    s->hwctx = device_hwctx;
    s->cu_stream = s->hwctx->stream;

    ret = CHECK_CU(cu->cuCtxPushCurrent(cuda_ctx));
    if (ret < 0)
        return ret;

    ret = CHECK_CU(cu->cuModuleLoadData(&s->cu_module, vf_thumbnail_cuda_ptx));
    if (ret < 0)
        return ret;

    ret = CHECK_CU(cu->cuModuleGetFunction(&s->cu_func_uchar, s->cu_module, "Thumbnail_uchar"));
    if (ret < 0)
        return ret;

    ret = CHECK_CU(cu->cuModuleGetFunction(&s->cu_func_uchar2, s->cu_module, "Thumbnail_uchar2"));
    if (ret < 0)
        return ret;

    ret = CHECK_CU(cu->cuModuleGetFunction(&s->cu_func_ushort, s->cu_module, "Thumbnail_ushort"));
    if (ret < 0)
        return ret;

    ret = CHECK_CU(cu->cuModuleGetFunction(&s->cu_func_ushort2, s->cu_module, "Thumbnail_ushort2"));
    if (ret < 0)
        return ret;

    ret = CHECK_CU(cu->cuMemAlloc(&s->data, HIST_SIZE * sizeof(int)));
    if (ret < 0)
        return ret;

    CHECK_CU(cu->cuCtxPopCurrent(&dummy));

    s->hw_frames_ctx = ctx->inputs[0]->hw_frames_ctx;

    ctx->outputs[0]->hw_frames_ctx = av_buffer_ref(s->hw_frames_ctx);
    if (!ctx->outputs[0]->hw_frames_ctx)
        return AVERROR(ENOMEM);

    s->tb = inlink->time_base;

    if (!format_is_supported(hw_frames_ctx->sw_format)) {
        av_log(ctx, AV_LOG_ERROR, "Unsupported input format: %s\n", av_get_pix_fmt_name(hw_frames_ctx->sw_format));
        return AVERROR(ENOSYS);
    }

    return 0;
}

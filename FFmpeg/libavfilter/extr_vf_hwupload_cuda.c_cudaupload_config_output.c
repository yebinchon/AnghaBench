
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ data; } ;
struct TYPE_13__ {TYPE_1__* priv; TYPE_3__** inputs; } ;
struct TYPE_12__ {int hw_frames_ctx; int h; int w; int format; TYPE_4__* src; } ;
struct TYPE_11__ {int height; int width; int sw_format; int format; } ;
struct TYPE_10__ {TYPE_6__* hwframe; int hwdevice; } ;
typedef TYPE_1__ CudaUploadContext ;
typedef TYPE_2__ AVHWFramesContext ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_PIX_FMT_CUDA ;
 int ENOMEM ;
 int av_buffer_ref (TYPE_6__*) ;
 int av_buffer_unref (TYPE_6__**) ;
 TYPE_6__* av_hwframe_ctx_alloc (int ) ;
 int av_hwframe_ctx_init (TYPE_6__*) ;

__attribute__((used)) static int cudaupload_config_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AVFilterLink *inlink = ctx->inputs[0];
    CudaUploadContext *s = ctx->priv;

    AVHWFramesContext *hwframe_ctx;
    int ret;

    av_buffer_unref(&s->hwframe);
    s->hwframe = av_hwframe_ctx_alloc(s->hwdevice);
    if (!s->hwframe)
        return AVERROR(ENOMEM);

    hwframe_ctx = (AVHWFramesContext*)s->hwframe->data;
    hwframe_ctx->format = AV_PIX_FMT_CUDA;
    hwframe_ctx->sw_format = inlink->format;
    hwframe_ctx->width = inlink->w;
    hwframe_ctx->height = inlink->h;

    ret = av_hwframe_ctx_init(s->hwframe);
    if (ret < 0)
        return ret;

    outlink->hw_frames_ctx = av_buffer_ref(s->hwframe);
    if (!outlink->hw_frames_ctx)
        return AVERROR(ENOMEM);

    return 0;
}

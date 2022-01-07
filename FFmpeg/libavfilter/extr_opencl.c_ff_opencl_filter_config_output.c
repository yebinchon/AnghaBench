
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ data; } ;
struct TYPE_15__ {int hw_device_ctx; TYPE_1__* priv; } ;
struct TYPE_14__ {int h; int w; TYPE_5__* hw_frames_ctx; TYPE_4__* src; } ;
struct TYPE_13__ {int height; int width; int sw_format; int format; } ;
struct TYPE_12__ {int output_height; int output_width; int output_format; int device_ref; } ;
typedef TYPE_1__ OpenCLFilterContext ;
typedef TYPE_2__ AVHWFramesContext ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;
typedef TYPE_5__ AVBufferRef ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_PIX_FMT_OPENCL ;
 int EINVAL ;
 int ENOMEM ;
 int av_buffer_unref (TYPE_5__**) ;
 TYPE_5__* av_hwframe_ctx_alloc (int ) ;
 int av_hwframe_ctx_init (TYPE_5__*) ;
 int av_log (TYPE_4__*,int ,char*,...) ;
 int opencl_filter_set_device (TYPE_4__*,int ) ;

int ff_opencl_filter_config_output(AVFilterLink *outlink)
{
    AVFilterContext *avctx = outlink->src;
    OpenCLFilterContext *ctx = avctx->priv;
    AVBufferRef *output_frames_ref = ((void*)0);
    AVHWFramesContext *output_frames;
    int err;

    av_buffer_unref(&outlink->hw_frames_ctx);

    if (!ctx->device_ref) {
        if (!avctx->hw_device_ctx) {
            av_log(avctx, AV_LOG_ERROR, "OpenCL filtering requires an "
                   "OpenCL device.\n");
            return AVERROR(EINVAL);
        }

        err = opencl_filter_set_device(avctx, avctx->hw_device_ctx);
        if (err < 0)
            return err;
    }

    output_frames_ref = av_hwframe_ctx_alloc(ctx->device_ref);
    if (!output_frames_ref) {
        err = AVERROR(ENOMEM);
        goto fail;
    }
    output_frames = (AVHWFramesContext*)output_frames_ref->data;

    output_frames->format = AV_PIX_FMT_OPENCL;
    output_frames->sw_format = ctx->output_format;
    output_frames->width = ctx->output_width;
    output_frames->height = ctx->output_height;

    err = av_hwframe_ctx_init(output_frames_ref);
    if (err < 0) {
        av_log(avctx, AV_LOG_ERROR, "Failed to initialise output "
               "frames: %d.\n", err);
        goto fail;
    }

    outlink->hw_frames_ctx = output_frames_ref;
    outlink->w = ctx->output_width;
    outlink->h = ctx->output_height;

    return 0;
fail:
    av_buffer_unref(&output_frames_ref);
    return err;
}

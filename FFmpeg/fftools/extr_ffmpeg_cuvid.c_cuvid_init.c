
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ data; } ;
struct TYPE_11__ {int height; int width; int sw_pix_fmt; TYPE_1__* opaque; } ;
struct TYPE_10__ {int height; int width; int sw_format; int format; } ;
struct TYPE_9__ {int hwaccel_uninit; TYPE_6__* hw_frames_ctx; int hwaccel_device; } ;
typedef TYPE_1__ InputStream ;
typedef TYPE_2__ AVHWFramesContext ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_HWDEVICE_TYPE_CUDA ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int AV_PIX_FMT_CUDA ;
 int ENOMEM ;
 int av_buffer_unref (TYPE_6__**) ;
 int av_get_pix_fmt_name (int ) ;
 int av_hwdevice_ctx_create (int *,int ,int ,int *,int ) ;
 TYPE_6__* av_hwframe_ctx_alloc (int ) ;
 int av_hwframe_ctx_init (TYPE_6__*) ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int cuvid_uninit ;
 int hw_device_ctx ;

int cuvid_init(AVCodecContext *avctx)
{
    InputStream *ist = avctx->opaque;
    AVHWFramesContext *frames_ctx;
    int ret;

    av_log(avctx, AV_LOG_VERBOSE, "Initializing cuvid hwaccel\n");

    if (!hw_device_ctx) {
        ret = av_hwdevice_ctx_create(&hw_device_ctx, AV_HWDEVICE_TYPE_CUDA,
                                     ist->hwaccel_device, ((void*)0), 0);
        if (ret < 0) {
            av_log(avctx, AV_LOG_ERROR, "Error creating a CUDA device\n");
            return ret;
        }
    }

    av_buffer_unref(&ist->hw_frames_ctx);
    ist->hw_frames_ctx = av_hwframe_ctx_alloc(hw_device_ctx);
    if (!ist->hw_frames_ctx) {
        av_log(avctx, AV_LOG_ERROR, "Error creating a CUDA frames context\n");
        return AVERROR(ENOMEM);
    }

    frames_ctx = (AVHWFramesContext*)ist->hw_frames_ctx->data;

    frames_ctx->format = AV_PIX_FMT_CUDA;
    frames_ctx->sw_format = avctx->sw_pix_fmt;
    frames_ctx->width = avctx->width;
    frames_ctx->height = avctx->height;

    av_log(avctx, AV_LOG_DEBUG, "Initializing CUDA frames context: sw_format = %s, width = %d, height = %d\n",
           av_get_pix_fmt_name(frames_ctx->sw_format), frames_ctx->width, frames_ctx->height);

    ret = av_hwframe_ctx_init(ist->hw_frames_ctx);
    if (ret < 0) {
        av_log(avctx, AV_LOG_ERROR, "Error initializing a CUDA frame pool\n");
        return ret;
    }

    ist->hwaccel_uninit = cuvid_uninit;

    return 0;
}

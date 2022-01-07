
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ data; } ;
struct TYPE_12__ {int hw_frames_ctx; } ;
struct TYPE_11__ {int initial_pool_size; int height; int width; int sw_format; int format; } ;
typedef TYPE_1__ AVHWFramesContext ;
typedef TYPE_2__ AVCodecContext ;
typedef TYPE_3__ AVBufferRef ;


 int AVERROR (int ) ;
 int AV_PIX_FMT_NV12 ;
 int AV_PIX_FMT_VAAPI ;
 int ENOMEM ;
 int av_buffer_ref (TYPE_3__*) ;
 int av_buffer_unref (TYPE_3__**) ;
 char* av_err2str (int) ;
 TYPE_3__* av_hwframe_ctx_alloc (TYPE_3__*) ;
 int av_hwframe_ctx_init (TYPE_3__*) ;
 int fprintf (int ,char*,...) ;
 int height ;
 int stderr ;
 int width ;

__attribute__((used)) static int set_hwframe_ctx(AVCodecContext *ctx, AVBufferRef *hw_device_ctx)
{
    AVBufferRef *hw_frames_ref;
    AVHWFramesContext *frames_ctx = ((void*)0);
    int err = 0;

    if (!(hw_frames_ref = av_hwframe_ctx_alloc(hw_device_ctx))) {
        fprintf(stderr, "Failed to create VAAPI frame context.\n");
        return -1;
    }
    frames_ctx = (AVHWFramesContext *)(hw_frames_ref->data);
    frames_ctx->format = AV_PIX_FMT_VAAPI;
    frames_ctx->sw_format = AV_PIX_FMT_NV12;
    frames_ctx->width = width;
    frames_ctx->height = height;
    frames_ctx->initial_pool_size = 20;
    if ((err = av_hwframe_ctx_init(hw_frames_ref)) < 0) {
        fprintf(stderr, "Failed to initialize VAAPI frame context."
                "Error code: %s\n",av_err2str(err));
        av_buffer_unref(&hw_frames_ref);
        return err;
    }
    ctx->hw_frames_ctx = av_buffer_ref(hw_frames_ref);
    if (!ctx->hw_frames_ctx)
        err = AVERROR(ENOMEM);

    av_buffer_unref(&hw_frames_ref);
    return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ media_status_t ;
struct TYPE_8__ {int onImageAvailable; TYPE_2__* context; } ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {int image_reader_window; int image_reader; TYPE_5__ image_listener; int height; int width; } ;
typedef TYPE_1__ AndroidCameraCtx ;
typedef TYPE_2__ AVFormatContext ;


 scalar_t__ AImageReader_getWindow (int ,int *) ;
 scalar_t__ AImageReader_new (int ,int ,int ,int ,int *) ;
 scalar_t__ AImageReader_setImageListener (int ,TYPE_5__*) ;
 scalar_t__ AMEDIA_OK ;
 int AVERROR_EXTERNAL ;
 int AV_LOG_ERROR ;
 int IMAGE_FORMAT_ANDROID ;
 int MAX_BUF_COUNT ;
 int av_log (TYPE_2__*,int ,char*,int ) ;
 int image_available ;
 int media_status_string (scalar_t__) ;

__attribute__((used)) static int create_image_reader(AVFormatContext *avctx)
{
    AndroidCameraCtx *ctx = avctx->priv_data;
    media_status_t ret;

    ret = AImageReader_new(ctx->width, ctx->height, IMAGE_FORMAT_ANDROID,
                           MAX_BUF_COUNT, &ctx->image_reader);
    if (ret != AMEDIA_OK) {
        av_log(avctx, AV_LOG_ERROR,
               "Failed to create image reader, error: %s.\n", media_status_string(ret));
        return AVERROR_EXTERNAL;
    }

    ctx->image_listener.context = avctx;
    ctx->image_listener.onImageAvailable = image_available;

    ret = AImageReader_setImageListener(ctx->image_reader, &ctx->image_listener);
    if (ret != AMEDIA_OK) {
        av_log(avctx, AV_LOG_ERROR,
               "Failed to set image listener on image reader, error: %s.\n",
               media_status_string(ret));
        return AVERROR_EXTERNAL;
    }

    ret = AImageReader_getWindow(ctx->image_reader, &ctx->image_reader_window);
    if (ret != AMEDIA_OK) {
        av_log(avctx, AV_LOG_ERROR,
               "Could not get image reader window, error: %s.\n",
               media_status_string(ret));
        return AVERROR_EXTERNAL;
    }

    return 0;
}

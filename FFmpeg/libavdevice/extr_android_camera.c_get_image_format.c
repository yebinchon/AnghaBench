
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int32_t ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int image_format; } ;
typedef TYPE_1__ AndroidCameraCtx ;
typedef TYPE_2__ AVFormatContext ;
typedef int AImage ;


 int AImage_getPlaneData (int *,int,int **,int*) ;
 int AImage_getPlanePixelStride (int *,int,int*) ;
 int AVERROR (int ) ;
 int AVERROR_EXTERNAL ;
 int AV_LOG_ERROR ;
 int AV_PIX_FMT_NV12 ;
 int AV_PIX_FMT_NV21 ;
 int AV_PIX_FMT_YUV420P ;
 int ENOSYS ;
 int av_log (TYPE_2__*,int ,char*,...) ;

__attribute__((used)) static int get_image_format(AVFormatContext *avctx, AImage *image)
{
    AndroidCameraCtx *ctx = avctx->priv_data;
    int32_t image_pixelstrides[2];
    uint8_t *image_plane_data[2];
    int plane_data_length[2];

    for (int i = 0; i < 2; i++) {
        AImage_getPlanePixelStride(image, i + 1, &image_pixelstrides[i]);
        AImage_getPlaneData(image, i + 1, &image_plane_data[i], &plane_data_length[i]);
    }

    if (image_pixelstrides[0] != image_pixelstrides[1]) {
        av_log(avctx, AV_LOG_ERROR,
               "Pixel strides of U and V plane should have been the same.\n");
        return AVERROR_EXTERNAL;
    }

    switch (image_pixelstrides[0]) {
        case 1:
            ctx->image_format = AV_PIX_FMT_YUV420P;
            break;
        case 2:
            if (image_plane_data[0] < image_plane_data[1]) {
                ctx->image_format = AV_PIX_FMT_NV12;
            } else {
                ctx->image_format = AV_PIX_FMT_NV21;
            }
            break;
        default:
            av_log(avctx, AV_LOG_ERROR,
                   "Unknown pixel stride %d of U and V plane, cannot determine camera image format.\n",
                   image_pixelstrides[0]);
            return AVERROR(ENOSYS);
    }

    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct aom_image {int d_w; int w; scalar_t__ d_h; scalar_t__ h; int fmt; int bit_depth; int stride; scalar_t__ planes; } ;
struct TYPE_16__ {int decoder; } ;
struct TYPE_15__ {int width; int height; int pix_fmt; TYPE_4__* priv_data; } ;
struct TYPE_14__ {int linesize; int data; } ;
struct TYPE_13__ {int size; int data; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;
typedef TYPE_4__ AV1DecodeContext ;


 scalar_t__ AOM_CODEC_OK ;
 int AOM_IMG_FMT_HIGHBITDEPTH ;
 int AVERROR_EXTERNAL ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 scalar_t__ aom_codec_decode (int *,int ,int,int *) ;
 char* aom_codec_error (int *) ;
 char* aom_codec_error_detail (int *) ;
 struct aom_image* aom_codec_get_frame (int *,void const**) ;
 int av_image_copy (int ,int ,int const**,int ,int ,int,int) ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int ff_get_buffer (TYPE_3__*,TYPE_2__*,int ) ;
 int ff_set_dimensions (TYPE_3__*,int,int) ;
 int image_copy_16_to_8 (TYPE_2__*,struct aom_image*) ;
 int set_pix_fmt (TYPE_3__*,struct aom_image*) ;

__attribute__((used)) static int aom_decode(AVCodecContext *avctx, void *data, int *got_frame,
                      AVPacket *avpkt)
{
    AV1DecodeContext *ctx = avctx->priv_data;
    AVFrame *picture = data;
    const void *iter = ((void*)0);
    struct aom_image *img;
    int ret;

    if (aom_codec_decode(&ctx->decoder, avpkt->data, avpkt->size, ((void*)0)) !=
        AOM_CODEC_OK) {
        const char *error = aom_codec_error(&ctx->decoder);
        const char *detail = aom_codec_error_detail(&ctx->decoder);

        av_log(avctx, AV_LOG_ERROR, "Failed to decode frame: %s\n", error);
        if (detail)
            av_log(avctx, AV_LOG_ERROR, "  Additional information: %s\n",
                   detail);
        return AVERROR_INVALIDDATA;
    }

    if ((img = aom_codec_get_frame(&ctx->decoder, &iter))) {
        if (img->d_w > img->w || img->d_h > img->h) {
            av_log(avctx, AV_LOG_ERROR, "Display dimensions %dx%d exceed storage %dx%d\n",
                   img->d_w, img->d_h, img->w, img->h);
            return AVERROR_EXTERNAL;
        }

        if ((ret = set_pix_fmt(avctx, img)) < 0) {
            av_log(avctx, AV_LOG_ERROR, "Unsupported output colorspace (%d) / bit_depth (%d)\n",
                   img->fmt, img->bit_depth);
            return ret;
        }

        if ((int)img->d_w != avctx->width || (int)img->d_h != avctx->height) {
            av_log(avctx, AV_LOG_INFO, "dimension change! %dx%d -> %dx%d\n",
                   avctx->width, avctx->height, img->d_w, img->d_h);
            ret = ff_set_dimensions(avctx, img->d_w, img->d_h);
            if (ret < 0)
                return ret;
        }
        if ((ret = ff_get_buffer(avctx, picture, 0)) < 0)
            return ret;
        if ((img->fmt & AOM_IMG_FMT_HIGHBITDEPTH) && img->bit_depth == 8)
            image_copy_16_to_8(picture, img);
        else
            av_image_copy(picture->data, picture->linesize, (const uint8_t **)img->planes,
                          img->stride, avctx->pix_fmt, img->d_w, img->d_h);
        *got_frame = 1;
    }
    return avpkt->size;
}

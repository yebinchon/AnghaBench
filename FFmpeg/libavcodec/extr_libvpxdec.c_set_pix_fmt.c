
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vpx_image {size_t range; size_t cs; int fmt; int bit_depth; } ;
typedef enum AVColorSpace { ____Placeholder_AVColorSpace } AVColorSpace ;
typedef enum AVColorRange { ____Placeholder_AVColorRange } AVColorRange ;
struct TYPE_3__ {int color_range; int colorspace; scalar_t__ codec_id; int pix_fmt; void* profile; } ;
typedef TYPE_1__ AVCodecContext ;
 int AVERROR_INVALIDDATA ;
 scalar_t__ AV_CODEC_ID_VP8 ;
 scalar_t__ AV_CODEC_ID_VP9 ;
 int AV_PIX_FMT_GBRP ;
 int AV_PIX_FMT_GBRP10 ;
 int AV_PIX_FMT_GBRP12 ;
 int AV_PIX_FMT_YUV420P ;
 int AV_PIX_FMT_YUV420P10 ;
 int AV_PIX_FMT_YUV420P12 ;
 int AV_PIX_FMT_YUV422P ;
 int AV_PIX_FMT_YUV422P10 ;
 int AV_PIX_FMT_YUV422P12 ;
 int AV_PIX_FMT_YUV440P ;
 int AV_PIX_FMT_YUV440P10 ;
 int AV_PIX_FMT_YUV440P12 ;
 int AV_PIX_FMT_YUV444P ;
 int AV_PIX_FMT_YUV444P10 ;
 int AV_PIX_FMT_YUV444P12 ;
 int AV_PIX_FMT_YUVA420P ;
 void* FF_PROFILE_VP9_0 ;
 void* FF_PROFILE_VP9_1 ;
 void* FF_PROFILE_VP9_2 ;
 void* FF_PROFILE_VP9_3 ;
__attribute__((used)) static int set_pix_fmt(AVCodecContext *avctx, struct vpx_image *img,
                       int has_alpha_channel)
{
    static const enum AVColorSpace colorspaces[8] = {
        136, 142, 141, 138,
        137, 143, 140, 139,
    };






    avctx->colorspace = colorspaces[img->cs];
    if (avctx->codec_id == AV_CODEC_ID_VP8 && img->fmt != 135)
        return AVERROR_INVALIDDATA;
    switch (img->fmt) {
    case 135:
        if (avctx->codec_id == AV_CODEC_ID_VP9)
            avctx->profile = FF_PROFILE_VP9_0;
        avctx->pix_fmt =
            has_alpha_channel ? AV_PIX_FMT_YUVA420P : AV_PIX_FMT_YUV420P;
        return 0;
    default:
        return AVERROR_INVALIDDATA;
    }
}

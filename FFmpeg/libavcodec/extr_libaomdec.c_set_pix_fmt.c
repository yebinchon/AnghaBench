
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct aom_image {size_t range; int fmt; int bit_depth; int monochrome; int tc; int mc; int cp; } ;
typedef enum AVColorRange { ____Placeholder_AVColorRange } AVColorRange ;
struct TYPE_3__ {int color_range; void* profile; int pix_fmt; int color_trc; int colorspace; int color_primaries; } ;
typedef TYPE_1__ AVCodecContext ;
 int AVERROR_INVALIDDATA ;
 int AV_PIX_FMT_GRAY10 ;
 int AV_PIX_FMT_GRAY12 ;
 int AV_PIX_FMT_GRAY8 ;
 int AV_PIX_FMT_YUV420P ;
 int AV_PIX_FMT_YUV420P10 ;
 int AV_PIX_FMT_YUV420P12 ;
 int AV_PIX_FMT_YUV422P ;
 int AV_PIX_FMT_YUV422P10 ;
 int AV_PIX_FMT_YUV422P12 ;
 int AV_PIX_FMT_YUV444P ;
 int AV_PIX_FMT_YUV444P10 ;
 int AV_PIX_FMT_YUV444P12 ;
 void* FF_PROFILE_AV1_HIGH ;
 void* FF_PROFILE_AV1_MAIN ;
 void* FF_PROFILE_AV1_PROFESSIONAL ;

__attribute__((used)) static int set_pix_fmt(AVCodecContext *avctx, struct aom_image *img)
{
    static const enum AVColorRange color_ranges[] = {
        128, 129
    };
    avctx->color_range = color_ranges[img->range];
    avctx->color_primaries = img->cp;
    avctx->colorspace = img->mc;
    avctx->color_trc = img->tc;

    switch (img->fmt) {
    case 135:
    case 134:
        if (img->bit_depth == 8) {
            avctx->pix_fmt = img->monochrome ?
                             AV_PIX_FMT_GRAY8 : AV_PIX_FMT_YUV420P;
            avctx->profile = FF_PROFILE_AV1_MAIN;
            return 0;
        } else if (img->bit_depth == 10) {
            avctx->pix_fmt = img->monochrome ?
                             AV_PIX_FMT_GRAY10 : AV_PIX_FMT_YUV420P10;
            avctx->profile = FF_PROFILE_AV1_MAIN;
            return 0;
        } else if (img->bit_depth == 12) {
            avctx->pix_fmt = img->monochrome ?
                             AV_PIX_FMT_GRAY12 : AV_PIX_FMT_YUV420P12;
            avctx->profile = FF_PROFILE_AV1_PROFESSIONAL;
            return 0;
        } else {
            return AVERROR_INVALIDDATA;
        }
    case 133:
    case 132:
        if (img->bit_depth == 8) {
            avctx->pix_fmt = AV_PIX_FMT_YUV422P;
            avctx->profile = FF_PROFILE_AV1_PROFESSIONAL;
            return 0;
        } else if (img->bit_depth == 10) {
            avctx->pix_fmt = AV_PIX_FMT_YUV422P10;
            avctx->profile = FF_PROFILE_AV1_PROFESSIONAL;
            return 0;
        } else if (img->bit_depth == 12) {
            avctx->pix_fmt = AV_PIX_FMT_YUV422P12;
            avctx->profile = FF_PROFILE_AV1_PROFESSIONAL;
            return 0;
        } else {
            return AVERROR_INVALIDDATA;
        }
    case 131:
    case 130:
        if (img->bit_depth == 8) {
            avctx->pix_fmt = AV_PIX_FMT_YUV444P;
            avctx->profile = FF_PROFILE_AV1_HIGH;
            return 0;
        } else if (img->bit_depth == 10) {
            avctx->pix_fmt = AV_PIX_FMT_YUV444P10;
            avctx->profile = FF_PROFILE_AV1_HIGH;
            return 0;
        } else if (img->bit_depth == 12) {
            avctx->pix_fmt = AV_PIX_FMT_YUV444P12;
            avctx->profile = FF_PROFILE_AV1_PROFESSIONAL;
            return 0;
        } else {
            return AVERROR_INVALIDDATA;
        }

    default:
        return AVERROR_INVALIDDATA;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_6__ {int color_format; int pix_fmt; } ;
struct TYPE_5__ {int color_format; int codec_name; scalar_t__ surface; } ;
typedef TYPE_1__ MediaCodecDecContext ;
typedef int AVCodecContext ;


 int AV_LOG_ERROR ;
 int AV_PIX_FMT_MEDIACODEC ;
 int AV_PIX_FMT_NONE ;
 int COLOR_FormatYCbYCr ;
 int COLOR_TI_FormatYUV420PackedSemiPlanar ;
 int FF_ARRAY_ELEMS (TYPE_3__*) ;
 int av_log (int *,int ,char*,int,int) ;
 TYPE_3__* color_formats ;
 int strcmp (int ,char*) ;

__attribute__((used)) static enum AVPixelFormat mcdec_map_color_format(AVCodecContext *avctx,
                                                 MediaCodecDecContext *s,
                                                 int color_format)
{
    int i;
    enum AVPixelFormat ret = AV_PIX_FMT_NONE;

    if (s->surface) {
        return AV_PIX_FMT_MEDIACODEC;
    }

    if (!strcmp(s->codec_name, "OMX.k3.video.decoder.avc") && color_format == COLOR_FormatYCbYCr) {
        s->color_format = color_format = COLOR_TI_FormatYUV420PackedSemiPlanar;
    }

    for (i = 0; i < FF_ARRAY_ELEMS(color_formats); i++) {
        if (color_formats[i].color_format == color_format) {
            return color_formats[i].pix_fmt;
        }
    }

    av_log(avctx, AV_LOG_ERROR, "Output color format 0x%x (value=%d) is not supported\n",
        color_format, color_format);

    return ret;
}

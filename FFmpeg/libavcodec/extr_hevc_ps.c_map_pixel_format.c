
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int log2_chroma_h; int log2_chroma_w; } ;
struct TYPE_5__ {int bit_depth; int chroma_format_idc; int pixel_shift; int * vshift; int * hshift; int pix_fmt; } ;
typedef TYPE_1__ HEVCSPS ;
typedef TYPE_2__ AVPixFmtDescriptor ;
typedef int AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_PIX_FMT_GRAY10 ;
 int AV_PIX_FMT_GRAY12 ;
 int AV_PIX_FMT_GRAY8 ;
 int AV_PIX_FMT_GRAY9 ;
 int AV_PIX_FMT_YUV420P ;
 int AV_PIX_FMT_YUV420P10 ;
 int AV_PIX_FMT_YUV420P12 ;
 int AV_PIX_FMT_YUV420P9 ;
 int AV_PIX_FMT_YUV422P ;
 int AV_PIX_FMT_YUV422P10 ;
 int AV_PIX_FMT_YUV422P12 ;
 int AV_PIX_FMT_YUV422P9 ;
 int AV_PIX_FMT_YUV444P ;
 int AV_PIX_FMT_YUV444P10 ;
 int AV_PIX_FMT_YUV444P12 ;
 int AV_PIX_FMT_YUV444P9 ;
 int EINVAL ;
 int av_log (int *,int ,char*,int,int) ;
 TYPE_2__* av_pix_fmt_desc_get (int ) ;

__attribute__((used)) static int map_pixel_format(AVCodecContext *avctx, HEVCSPS *sps)
{
    const AVPixFmtDescriptor *desc;
    switch (sps->bit_depth) {
    case 8:
        if (sps->chroma_format_idc == 0) sps->pix_fmt = AV_PIX_FMT_GRAY8;
        if (sps->chroma_format_idc == 1) sps->pix_fmt = AV_PIX_FMT_YUV420P;
        if (sps->chroma_format_idc == 2) sps->pix_fmt = AV_PIX_FMT_YUV422P;
        if (sps->chroma_format_idc == 3) sps->pix_fmt = AV_PIX_FMT_YUV444P;
       break;
    case 9:
        if (sps->chroma_format_idc == 0) sps->pix_fmt = AV_PIX_FMT_GRAY9;
        if (sps->chroma_format_idc == 1) sps->pix_fmt = AV_PIX_FMT_YUV420P9;
        if (sps->chroma_format_idc == 2) sps->pix_fmt = AV_PIX_FMT_YUV422P9;
        if (sps->chroma_format_idc == 3) sps->pix_fmt = AV_PIX_FMT_YUV444P9;
        break;
    case 10:
        if (sps->chroma_format_idc == 0) sps->pix_fmt = AV_PIX_FMT_GRAY10;
        if (sps->chroma_format_idc == 1) sps->pix_fmt = AV_PIX_FMT_YUV420P10;
        if (sps->chroma_format_idc == 2) sps->pix_fmt = AV_PIX_FMT_YUV422P10;
        if (sps->chroma_format_idc == 3) sps->pix_fmt = AV_PIX_FMT_YUV444P10;
        break;
    case 12:
        if (sps->chroma_format_idc == 0) sps->pix_fmt = AV_PIX_FMT_GRAY12;
        if (sps->chroma_format_idc == 1) sps->pix_fmt = AV_PIX_FMT_YUV420P12;
        if (sps->chroma_format_idc == 2) sps->pix_fmt = AV_PIX_FMT_YUV422P12;
        if (sps->chroma_format_idc == 3) sps->pix_fmt = AV_PIX_FMT_YUV444P12;
        break;
    default:
        av_log(avctx, AV_LOG_ERROR,
               "The following bit-depths are currently specified: 8, 9, 10 and 12 bits, "
               "chroma_format_idc is %d, depth is %d\n",
               sps->chroma_format_idc, sps->bit_depth);
        return AVERROR_INVALIDDATA;
    }

    desc = av_pix_fmt_desc_get(sps->pix_fmt);
    if (!desc)
        return AVERROR(EINVAL);

    sps->hshift[0] = sps->vshift[0] = 0;
    sps->hshift[2] = sps->hshift[1] = desc->log2_chroma_w;
    sps->vshift[2] = sps->vshift[1] = desc->log2_chroma_h;

    sps->pixel_shift = sps->bit_depth > 8;

    return 0;
}

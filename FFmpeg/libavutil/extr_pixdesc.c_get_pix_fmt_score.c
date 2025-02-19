
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_7__ {int flags; int nb_components; int log2_chroma_w; int log2_chroma_h; TYPE_1__* comp; } ;
struct TYPE_6__ {int depth; } ;
typedef TYPE_2__ AVPixFmtDescriptor ;


 int AV_PIX_FMT_FLAG_HWACCEL ;
 int AV_PIX_FMT_PAL8 ;
 int FFMIN (int,int) ;




 unsigned int FF_LOSS_ALPHA ;
 unsigned int FF_LOSS_CHROMA ;
 unsigned int FF_LOSS_COLORQUANT ;
 unsigned int FF_LOSS_COLORSPACE ;
 unsigned int FF_LOSS_DEPTH ;
 unsigned int FF_LOSS_RESOLUTION ;
 int INT_MAX ;
 TYPE_2__* av_pix_fmt_desc_get (int) ;
 int get_color_type (TYPE_2__ const*) ;
 int get_pix_fmt_depth (int*,int*,int) ;
 scalar_t__ pixdesc_has_alpha (TYPE_2__ const*) ;

__attribute__((used)) static int get_pix_fmt_score(enum AVPixelFormat dst_pix_fmt,
                              enum AVPixelFormat src_pix_fmt,
                              unsigned *lossp, unsigned consider)
{
    const AVPixFmtDescriptor *src_desc = av_pix_fmt_desc_get(src_pix_fmt);
    const AVPixFmtDescriptor *dst_desc = av_pix_fmt_desc_get(dst_pix_fmt);
    int src_color, dst_color;
    int src_min_depth, src_max_depth, dst_min_depth, dst_max_depth;
    int ret, loss, i, nb_components;
    int score = INT_MAX - 1;

    if (!src_desc || !dst_desc)
        return -4;

    if ((src_desc->flags & AV_PIX_FMT_FLAG_HWACCEL) ||
        (dst_desc->flags & AV_PIX_FMT_FLAG_HWACCEL)) {
        if (dst_pix_fmt == src_pix_fmt)
            return -1;
        else
            return -2;
    }


    *lossp = loss = 0;

    if (dst_pix_fmt == src_pix_fmt)
        return INT_MAX;

    if ((ret = get_pix_fmt_depth(&src_min_depth, &src_max_depth, src_pix_fmt)) < 0)
        return -3;
    if ((ret = get_pix_fmt_depth(&dst_min_depth, &dst_max_depth, dst_pix_fmt)) < 0)
        return -3;

    src_color = get_color_type(src_desc);
    dst_color = get_color_type(dst_desc);
    if (dst_pix_fmt == AV_PIX_FMT_PAL8)
        nb_components = FFMIN(src_desc->nb_components, 4);
    else
        nb_components = FFMIN(src_desc->nb_components, dst_desc->nb_components);

    for (i = 0; i < nb_components; i++) {
        int depth_minus1 = (dst_pix_fmt == AV_PIX_FMT_PAL8) ? 7/nb_components : (dst_desc->comp[i].depth - 1);
        if (src_desc->comp[i].depth - 1 > depth_minus1 && (consider & FF_LOSS_DEPTH)) {
            loss |= FF_LOSS_DEPTH;
            score -= 65536 >> depth_minus1;
        }
    }

    if (consider & FF_LOSS_RESOLUTION) {
        if (dst_desc->log2_chroma_w > src_desc->log2_chroma_w) {
            loss |= FF_LOSS_RESOLUTION;
            score -= 256 << dst_desc->log2_chroma_w;
        }
        if (dst_desc->log2_chroma_h > src_desc->log2_chroma_h) {
            loss |= FF_LOSS_RESOLUTION;
            score -= 256 << dst_desc->log2_chroma_h;
        }

        if (dst_desc->log2_chroma_w == 1 && src_desc->log2_chroma_w == 0 &&
            dst_desc->log2_chroma_h == 1 && src_desc->log2_chroma_h == 0 ) {
            score += 512;
        }
    }

    if(consider & FF_LOSS_COLORSPACE)
    switch(dst_color) {
    case 130:
        if (src_color != 130 &&
            src_color != 131)
            loss |= FF_LOSS_COLORSPACE;
        break;
    case 131:
        if (src_color != 131)
            loss |= FF_LOSS_COLORSPACE;
        break;
    case 129:
        if (src_color != 129)
            loss |= FF_LOSS_COLORSPACE;
        break;
    case 128:
        if (src_color != 128 &&
            src_color != 129 &&
            src_color != 131)
            loss |= FF_LOSS_COLORSPACE;
        break;
    default:

        if (src_color != dst_color)
            loss |= FF_LOSS_COLORSPACE;
        break;
    }
    if(loss & FF_LOSS_COLORSPACE)
        score -= (nb_components * 65536) >> FFMIN(dst_desc->comp[0].depth - 1, src_desc->comp[0].depth - 1);

    if (dst_color == 131 &&
        src_color != 131 && (consider & FF_LOSS_CHROMA)) {
        loss |= FF_LOSS_CHROMA;
        score -= 2 * 65536;
    }
    if (!pixdesc_has_alpha(dst_desc) && (pixdesc_has_alpha(src_desc) && (consider & FF_LOSS_ALPHA))) {
        loss |= FF_LOSS_ALPHA;
        score -= 65536;
    }
    if (dst_pix_fmt == AV_PIX_FMT_PAL8 && (consider & FF_LOSS_COLORQUANT) &&
        (src_pix_fmt != AV_PIX_FMT_PAL8 && (src_color != 131 || (pixdesc_has_alpha(src_desc) && (consider & FF_LOSS_ALPHA))))) {
        loss |= FF_LOSS_COLORQUANT;
        score -= 65536;
    }

    *lossp = loss;
    return score;
}

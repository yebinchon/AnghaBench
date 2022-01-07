
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int w; int format; int h; TYPE_1__* dst; } ;
struct TYPE_9__ {int flags; int log2_chroma_h; } ;
struct TYPE_8__ {int is_packed_rgb; int tmp_bwidth; int * tmp_data; int tmp_linesize; int vsub; } ;
struct TYPE_7__ {TYPE_2__* priv; } ;
typedef TYPE_2__ KerndeintContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;


 int AV_PIX_FMT_FLAG_RGB ;
 int av_image_alloc (int *,int ,int ,int ,int ,int) ;
 int av_image_fill_linesizes (int ,int ,int ) ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int config_props(AVFilterLink *inlink)
{
    KerndeintContext *kerndeint = inlink->dst->priv;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);
    int ret;

    kerndeint->is_packed_rgb = av_pix_fmt_desc_get(inlink->format)->flags & AV_PIX_FMT_FLAG_RGB;
    kerndeint->vsub = desc->log2_chroma_h;

    ret = av_image_alloc(kerndeint->tmp_data, kerndeint->tmp_linesize,
                         inlink->w, inlink->h, inlink->format, 16);
    if (ret < 0)
        return ret;
    memset(kerndeint->tmp_data[0], 0, ret);

    if ((ret = av_image_fill_linesizes(kerndeint->tmp_bwidth, inlink->format, inlink->w)) < 0)
        return ret;

    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int h; int w; int format; TYPE_1__* dst; } ;
struct TYPE_9__ {int flags; int log2_chroma_h; } ;
struct TYPE_8__ {int has_alpha; int chroma_height; int linesize; int nb_planes; } ;
struct TYPE_7__ {TYPE_2__* priv; } ;
typedef TYPE_2__ IlContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;


 int AV_CEIL_RSHIFT (int ,int ) ;
 int AV_PIX_FMT_FLAG_ALPHA ;
 int av_image_fill_linesizes (int ,int ,int ) ;
 int av_pix_fmt_count_planes (int ) ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    IlContext *s = inlink->dst->priv;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);
    int ret;

    s->nb_planes = av_pix_fmt_count_planes(inlink->format);

    s->has_alpha = !!(desc->flags & AV_PIX_FMT_FLAG_ALPHA);
    if ((ret = av_image_fill_linesizes(s->linesize, inlink->format, inlink->w)) < 0)
        return ret;

    s->chroma_height = AV_CEIL_RSHIFT(inlink->h, desc->log2_chroma_h);

    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int log2_chroma_h; TYPE_1__* comp; } ;
struct TYPE_10__ {TYPE_3__** inputs; TYPE_2__* priv; } ;
struct TYPE_9__ {int h; int w; int format; TYPE_4__* src; } ;
struct TYPE_8__ {int depth; int * height; TYPE_6__* desc; int linesize; int lagfun; int nb_planes; } ;
struct TYPE_7__ {int depth; } ;
typedef TYPE_2__ LagfunContext ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR_BUG ;
 int AV_CEIL_RSHIFT (int ,int ) ;
 int av_image_fill_linesizes (int ,int ,int ) ;
 int av_pix_fmt_count_planes (int ) ;
 TYPE_6__* av_pix_fmt_desc_get (int ) ;
 int lagfun_frame16 ;
 int lagfun_frame8 ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    LagfunContext *s = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];
    int ret;

    s->desc = av_pix_fmt_desc_get(outlink->format);
    if (!s->desc)
        return AVERROR_BUG;
    s->nb_planes = av_pix_fmt_count_planes(outlink->format);
    s->depth = s->desc->comp[0].depth;
    s->lagfun = s->depth <= 8 ? lagfun_frame8 : lagfun_frame16;

    if ((ret = av_image_fill_linesizes(s->linesize, inlink->format, inlink->w)) < 0)
        return ret;

    s->height[1] = s->height[2] = AV_CEIL_RSHIFT(inlink->h, s->desc->log2_chroma_h);
    s->height[0] = s->height[3] = inlink->h;

    return 0;
}

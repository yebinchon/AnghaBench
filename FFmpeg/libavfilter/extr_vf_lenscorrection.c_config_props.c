
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__** inputs; TYPE_1__* priv; } ;
struct TYPE_9__ {int format; int h; int w; TYPE_4__* src; } ;
struct TYPE_8__ {int log2_chroma_h; int log2_chroma_w; } ;
struct TYPE_7__ {int nb_planes; int height; int width; int vsub; int hsub; } ;
typedef TYPE_1__ LenscorrectionCtx ;
typedef TYPE_2__ AVPixFmtDescriptor ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int av_pix_fmt_count_planes (int ) ;
 TYPE_2__* av_pix_fmt_desc_get (int ) ;

__attribute__((used)) static int config_props(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    LenscorrectionCtx *rect = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];
    const AVPixFmtDescriptor *pixdesc = av_pix_fmt_desc_get(inlink->format);
    rect->hsub = pixdesc->log2_chroma_w;
    rect->vsub = pixdesc->log2_chroma_h;
    outlink->w = rect->width = inlink->w;
    outlink->h = rect->height = inlink->h;
    rect->nb_planes = av_pix_fmt_count_planes(inlink->format);
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int h; int w; int format; TYPE_1__* dst; } ;
struct TYPE_9__ {int log2_chroma_h; int log2_chroma_w; } ;
struct TYPE_8__ {int sws_flags; int vsub; int hsub; int chroma; int luma; } ;
struct TYPE_7__ {TYPE_2__* priv; } ;
typedef TYPE_2__ SabContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;


 int AV_CEIL_RSHIFT (int ,int ) ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;
 int close_filter_param (int *) ;
 int open_filter_param (int *,int ,int ,int ) ;

__attribute__((used)) static int config_props(AVFilterLink *inlink)
{
    SabContext *s = inlink->dst->priv;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);
    int ret;

    s->hsub = desc->log2_chroma_w;
    s->vsub = desc->log2_chroma_h;

    close_filter_param(&s->luma);
    ret = open_filter_param(&s->luma, inlink->w, inlink->h, s->sws_flags);
    if (ret < 0)
        return ret;

    close_filter_param(&s->chroma);
    ret = open_filter_param(&s->chroma,
                            AV_CEIL_RSHIFT(inlink->w, s->hsub),
                            AV_CEIL_RSHIFT(inlink->h, s->vsub), s->sws_flags);
    return ret;
}

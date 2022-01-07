
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int steps_y; } ;
struct TYPE_9__ {int hsub; TYPE_5__ chroma; TYPE_5__ luma; int nb_threads; int vsub; } ;
typedef TYPE_1__ UnsharpContext ;
struct TYPE_12__ {TYPE_1__* priv; } ;
struct TYPE_11__ {int h; int w; TYPE_4__* dst; int format; } ;
struct TYPE_10__ {int log2_chroma_h; int log2_chroma_w; } ;
typedef TYPE_2__ AVPixFmtDescriptor ;
typedef TYPE_3__ AVFilterLink ;


 int AV_CEIL_RSHIFT (int ,int ) ;
 int FFMIN (int ,int) ;
 TYPE_2__* av_pix_fmt_desc_get (int ) ;
 int ff_filter_get_nb_threads (TYPE_4__*) ;
 int init_filter_param (TYPE_4__*,TYPE_5__*,char*,int ) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    UnsharpContext *s = inlink->dst->priv;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);
    int ret;

    s->hsub = desc->log2_chroma_w;
    s->vsub = desc->log2_chroma_h;



    s->nb_threads = FFMIN(ff_filter_get_nb_threads(inlink->dst),
                          inlink->h / (4 * s->luma.steps_y));

    ret = init_filter_param(inlink->dst, &s->luma, "luma", inlink->w);
    if (ret < 0)
        return ret;
    ret = init_filter_param(inlink->dst, &s->chroma, "chroma", AV_CEIL_RSHIFT(inlink->w, s->hsub));
    if (ret < 0)
        return ret;

    return 0;
}

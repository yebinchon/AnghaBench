
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__** inputs; TYPE_2__* priv; } ;
struct TYPE_11__ {int h; int w; int frame_rate; int sample_aspect_ratio; int time_base; int format; TYPE_5__* src; } ;
struct TYPE_10__ {TYPE_1__* comp; } ;
struct TYPE_9__ {int bpc; scalar_t__ ppsrc; } ;
struct TYPE_8__ {int depth; } ;
typedef TYPE_2__ FieldMatchContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 size_t INPUT_CLEANSRC ;
 size_t INPUT_MAIN ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    FieldMatchContext *fm = ctx->priv;
    const AVFilterLink *inlink =
        ctx->inputs[fm->ppsrc ? INPUT_CLEANSRC : INPUT_MAIN];
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);

    fm->bpc = (desc->comp[0].depth + 7) / 8;
    outlink->time_base = inlink->time_base;
    outlink->sample_aspect_ratio = inlink->sample_aspect_ratio;
    outlink->frame_rate = inlink->frame_rate;
    outlink->w = inlink->w;
    outlink->h = inlink->h;
    return 0;
}

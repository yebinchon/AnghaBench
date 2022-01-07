
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__** inputs; TYPE_3__* priv; } ;
struct TYPE_9__ {int num; int den; } ;
struct TYPE_8__ {int den; int num; } ;
struct TYPE_11__ {int h; int w; TYPE_2__ frame_rate; TYPE_1__ time_base; int format; TYPE_5__* src; } ;
struct TYPE_10__ {int nb_planes; } ;
typedef TYPE_3__ SeparateFieldsContext ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_5__*,int ,char*) ;
 int av_pix_fmt_count_planes (int ) ;

__attribute__((used)) static int config_props_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    SeparateFieldsContext *s = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];

    s->nb_planes = av_pix_fmt_count_planes(inlink->format);

    if (inlink->h & 1) {
        av_log(ctx, AV_LOG_ERROR, "height must be even\n");
        return AVERROR_INVALIDDATA;
    }

    outlink->time_base.num = inlink->time_base.num;
    outlink->time_base.den = inlink->time_base.den * 2;
    outlink->frame_rate.num = inlink->frame_rate.num * 2;
    outlink->frame_rate.den = inlink->frame_rate.den;
    outlink->w = inlink->w;
    outlink->h = inlink->h / 2;

    return 0;
}

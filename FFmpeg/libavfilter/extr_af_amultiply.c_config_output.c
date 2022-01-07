
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__** inputs; TYPE_1__* priv; } ;
struct TYPE_6__ {int channels; int format; TYPE_3__* src; } ;
struct TYPE_5__ {int channels; int planes; int samples_align; } ;
typedef TYPE_1__ AudioMultiplyContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 scalar_t__ av_sample_fmt_is_planar (int ) ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AudioMultiplyContext *s = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];

    s->channels = inlink->channels;
    s->planes = av_sample_fmt_is_planar(inlink->format) ? inlink->channels : 1;
    s->samples_align = 16;

    return 0;
}

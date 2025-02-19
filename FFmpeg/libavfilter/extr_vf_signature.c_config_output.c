
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__** inputs; } ;
struct TYPE_4__ {int h; int w; int sample_aspect_ratio; int frame_rate; int time_base; TYPE_2__* src; } ;
typedef TYPE_1__ AVFilterLink ;
typedef TYPE_2__ AVFilterContext ;



__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AVFilterLink *inlink = ctx->inputs[0];

    outlink->time_base = inlink->time_base;
    outlink->frame_rate = inlink->frame_rate;
    outlink->sample_aspect_ratio = inlink->sample_aspect_ratio;
    outlink->w = inlink->w;
    outlink->h = inlink->h;

    return 0;
}

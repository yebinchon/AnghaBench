
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int w; int h; int time_base; int sample_aspect_ratio; TYPE_1__* src; int * dst; } ;
struct TYPE_4__ {TYPE_2__** inputs; } ;
typedef TYPE_2__ AVFilterLink ;
typedef int AVFilterContext ;


 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,int,int) ;

__attribute__((used)) static int config_props(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->dst;
    AVFilterLink *inlink = outlink->src->inputs[0];

    if (inlink->w % 2 || inlink->h % 2) {
        av_log(ctx, AV_LOG_ERROR, "Invalid odd size (%dx%d)\n",
               inlink->w, inlink->h);
        return AVERROR_PATCHWELCOME;
    }

    outlink->w = inlink->w;
    outlink->h = inlink->h;
    outlink->sample_aspect_ratio = inlink->sample_aspect_ratio;
    outlink->time_base = inlink->time_base;

    return 0;
}

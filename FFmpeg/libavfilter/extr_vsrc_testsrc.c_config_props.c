
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int time_base; int frame_rate; int sar; int h; int w; } ;
typedef TYPE_2__ TestSourceContext ;
struct TYPE_7__ {int time_base; int frame_rate; int sample_aspect_ratio; int h; int w; TYPE_1__* src; } ;
struct TYPE_5__ {TYPE_2__* priv; } ;
typedef TYPE_3__ AVFilterLink ;



__attribute__((used)) static int config_props(AVFilterLink *outlink)
{
    TestSourceContext *test = outlink->src->priv;

    outlink->w = test->w;
    outlink->h = test->h;
    outlink->sample_aspect_ratio = test->sar;
    outlink->frame_rate = test->frame_rate;
    outlink->time_base = test->time_base;

    return 0;
}

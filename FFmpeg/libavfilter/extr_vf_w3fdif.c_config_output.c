
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int num; int den; } ;
struct TYPE_8__ {int den; int num; } ;
struct TYPE_9__ {TYPE_1__ frame_rate; TYPE_3__ time_base; TYPE_2__* src; } ;
struct TYPE_7__ {TYPE_4__** inputs; } ;
typedef TYPE_4__ AVFilterLink ;



__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterLink *inlink = outlink->src->inputs[0];

    outlink->time_base.num = inlink->time_base.num;
    outlink->time_base.den = inlink->time_base.den * 2;
    outlink->frame_rate.num = inlink->frame_rate.num * 2;
    outlink->frame_rate.den = inlink->frame_rate.den;

    return 0;
}

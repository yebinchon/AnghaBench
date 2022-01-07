
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* dst; } ;
struct TYPE_10__ {int sample_aspect_ratio; } ;
struct TYPE_9__ {int sar; } ;
struct TYPE_8__ {int * outputs; TYPE_2__* priv; } ;
typedef TYPE_2__ AspectContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;


 int ff_filter_frame (int ,TYPE_3__*) ;

__attribute__((used)) static int filter_frame(AVFilterLink *link, AVFrame *frame)
{
    AspectContext *s = link->dst->priv;

    frame->sample_aspect_ratio = s->sar;
    return ff_filter_frame(link->dst->outputs[0], frame);
}

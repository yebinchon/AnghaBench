
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* dst; } ;
struct TYPE_5__ {TYPE_2__** outputs; } ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterLink ;


 int ff_filter_frame (TYPE_2__*,int *) ;

__attribute__((used)) static int filter_frame_ref(AVFilterLink *link, AVFrame *in)
{
    AVFilterLink *outlink = link->dst->outputs[1];

    return ff_filter_frame(outlink, in);
}

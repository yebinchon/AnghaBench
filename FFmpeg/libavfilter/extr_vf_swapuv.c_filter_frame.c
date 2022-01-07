
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* dst; } ;
struct TYPE_4__ {int * outputs; } ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterLink ;


 int do_swap (int *) ;
 int ff_filter_frame (int ,int *) ;

__attribute__((used)) static int filter_frame(AVFilterLink *link, AVFrame *inpicref)
{
    do_swap(inpicref);
    return ff_filter_frame(link->dst->outputs[0], inpicref);
}

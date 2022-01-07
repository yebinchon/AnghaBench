
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* internal; } ;
struct TYPE_4__ {scalar_t__ thread; } ;
typedef TYPE_2__ AVFilterGraph ;


 int av_freep (scalar_t__*) ;
 int slice_thread_uninit (scalar_t__) ;

void ff_graph_thread_free(AVFilterGraph *graph)
{
    if (graph->internal->thread)
        slice_thread_uninit(graph->internal->thread);
    av_freep(&graph->internal->thread);
}

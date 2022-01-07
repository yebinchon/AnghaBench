
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int age_index; } ;
typedef TYPE_1__ AVFilterLink ;
typedef int AVFilterGraph ;


 int heap_bubble_down (int *,TYPE_1__*,int ) ;
 int heap_bubble_up (int *,TYPE_1__*,int ) ;

void ff_avfilter_graph_update_heap(AVFilterGraph *graph, AVFilterLink *link)
{
    heap_bubble_up (graph, link, link->age_index);
    heap_bubble_down(graph, link, link->age_index);
}

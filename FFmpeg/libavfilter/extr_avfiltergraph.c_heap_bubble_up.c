
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__** sink_links; } ;
struct TYPE_5__ {scalar_t__ current_pts_us; int age_index; } ;
typedef TYPE_1__ AVFilterLink ;
typedef TYPE_2__ AVFilterGraph ;


 int av_assert0 (int) ;

__attribute__((used)) static void heap_bubble_up(AVFilterGraph *graph,
                           AVFilterLink *link, int index)
{
    AVFilterLink **links = graph->sink_links;

    av_assert0(index >= 0);

    while (index) {
        int parent = (index - 1) >> 1;
        if (links[parent]->current_pts_us >= link->current_pts_us)
            break;
        links[index] = links[parent];
        links[index]->age_index = index;
        index = parent;
    }
    links[index] = link;
    link->age_index = index;
}

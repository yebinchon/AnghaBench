
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ready; } ;
struct TYPE_5__ {unsigned int nb_filters; TYPE_2__** filters; } ;
typedef TYPE_1__ AVFilterGraph ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int EAGAIN ;
 int av_assert0 (unsigned int) ;
 int ff_filter_activate (TYPE_2__*) ;

int ff_filter_graph_run_once(AVFilterGraph *graph)
{
    AVFilterContext *filter;
    unsigned i;

    av_assert0(graph->nb_filters);
    filter = graph->filters[0];
    for (i = 1; i < graph->nb_filters; i++)
        if (graph->filters[i]->ready > filter->ready)
            filter = graph->filters[i];
    if (!filter->ready)
        return AVERROR(EAGAIN);
    return ff_filter_activate(filter);
}

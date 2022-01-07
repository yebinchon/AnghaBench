
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ name; } ;
struct TYPE_5__ {int nb_filters; TYPE_2__** filters; } ;
typedef TYPE_1__ AVFilterGraph ;
typedef TYPE_2__ AVFilterContext ;


 int strcmp (char const*,scalar_t__) ;

AVFilterContext *avfilter_graph_get_filter(AVFilterGraph *graph, const char *name)
{
    int i;

    for (i = 0; i < graph->nb_filters; i++)
        if (graph->filters[i]->name && !strcmp(name, graph->filters[i]->name))
            return graph->filters[i];

    return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nb_filters; int * filters; } ;
typedef TYPE_1__ AVFilterGraph ;


 int swap_samplerates_on_filter (int ) ;

__attribute__((used)) static void swap_samplerates(AVFilterGraph *graph)
{
    int i;

    for (i = 0; i < graph->nb_filters; i++)
        swap_samplerates_on_filter(graph->filters[i]);
}

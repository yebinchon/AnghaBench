
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nb_threads; scalar_t__ thread_type; } ;
typedef TYPE_1__ AVFilterGraph ;



int ff_graph_thread_init(AVFilterGraph *graph)
{
    graph->thread_type = 0;
    graph->nb_threads = 1;
    return 0;
}

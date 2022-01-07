
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int nb_outputs; int nb_inputs; int graph; TYPE_1__** inputs; TYPE_2__** outputs; } ;
struct TYPE_6__ {int * filter; } ;
struct TYPE_5__ {int * filter; } ;
typedef TYPE_3__ FilterGraph ;
typedef int AVFilterContext ;


 int avfilter_graph_free (int *) ;

__attribute__((used)) static void cleanup_filtergraph(FilterGraph *fg)
{
    int i;
    for (i = 0; i < fg->nb_outputs; i++)
        fg->outputs[i]->filter = (AVFilterContext *)((void*)0);
    for (i = 0; i < fg->nb_inputs; i++)
        fg->inputs[i]->filter = (AVFilterContext *)((void*)0);
    avfilter_graph_free(&fg->graph);
}

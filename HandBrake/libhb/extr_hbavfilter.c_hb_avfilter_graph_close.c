
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int frame; struct TYPE_4__* settings; int * avgraph; } ;
typedef TYPE_1__ hb_avfilter_graph_t ;


 int av_frame_free (int *) ;
 int avfilter_graph_free (int **) ;
 int free (TYPE_1__*) ;

void hb_avfilter_graph_close(hb_avfilter_graph_t ** _g)
{
    hb_avfilter_graph_t * graph = *_g;

    if (graph == ((void*)0))
    {
        return;
    }
    if (graph->avgraph != ((void*)0))
    {
        avfilter_graph_free(&graph->avgraph);
    }
    free(graph->settings);
    av_frame_free(&graph->frame);
    free(graph);
    *_g = ((void*)0);
}

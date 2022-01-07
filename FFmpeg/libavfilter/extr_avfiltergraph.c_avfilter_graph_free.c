
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* internal; struct TYPE_6__* filters; struct TYPE_6__* resample_lavr_opts; struct TYPE_6__* aresample_swr_opts; struct TYPE_6__* scale_sws_opts; struct TYPE_6__* sink_links; scalar_t__ nb_filters; } ;
typedef TYPE_1__ AVFilterGraph ;


 int av_freep (TYPE_1__**) ;
 int avfilter_free (TYPE_1__) ;
 int ff_graph_thread_free (TYPE_1__*) ;

void avfilter_graph_free(AVFilterGraph **graph)
{
    if (!*graph)
        return;

    while ((*graph)->nb_filters)
        avfilter_free((*graph)->filters[0]);

    ff_graph_thread_free(*graph);

    av_freep(&(*graph)->sink_links);

    av_freep(&(*graph)->scale_sws_opts);
    av_freep(&(*graph)->aresample_swr_opts);



    av_freep(&(*graph)->filters);
    av_freep(&(*graph)->internal);
    av_freep(graph);
}

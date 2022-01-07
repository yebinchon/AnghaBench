
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ThreadContext ;
struct TYPE_5__ {int nb_threads; TYPE_1__* internal; scalar_t__ thread_type; } ;
struct TYPE_4__ {int thread_execute; int thread; } ;
typedef TYPE_2__ AVFilterGraph ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_freep (int *) ;
 int av_mallocz (int) ;
 int thread_execute ;
 int thread_init_internal (int ,int) ;

int ff_graph_thread_init(AVFilterGraph *graph)
{
    int ret;

    if (graph->nb_threads == 1) {
        graph->thread_type = 0;
        return 0;
    }

    graph->internal->thread = av_mallocz(sizeof(ThreadContext));
    if (!graph->internal->thread)
        return AVERROR(ENOMEM);

    ret = thread_init_internal(graph->internal->thread, graph->nb_threads);
    if (ret <= 1) {
        av_freep(&graph->internal->thread);
        graph->thread_type = 0;
        graph->nb_threads = 1;
        return (ret < 0) ? ret : 0;
    }
    graph->nb_threads = ret;

    graph->internal->thread_execute = thread_execute;

    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* internal; int * av_class; } ;
struct TYPE_6__ {int frame_queues; } ;
typedef TYPE_2__ AVFilterGraph ;


 int av_freep (TYPE_2__**) ;
 void* av_mallocz (int) ;
 int av_opt_set_defaults (TYPE_2__*) ;
 int ff_framequeue_global_init (int *) ;
 int filtergraph_class ;

AVFilterGraph *avfilter_graph_alloc(void)
{
    AVFilterGraph *ret = av_mallocz(sizeof(*ret));
    if (!ret)
        return ((void*)0);

    ret->internal = av_mallocz(sizeof(*ret->internal));
    if (!ret->internal) {
        av_freep(&ret);
        return ((void*)0);
    }

    ret->av_class = &filtergraph_class;
    av_opt_set_defaults(ret);
    ff_framequeue_global_init(&ret->internal->frame_queues);

    return ret;
}

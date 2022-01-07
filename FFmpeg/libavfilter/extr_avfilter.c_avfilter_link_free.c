
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int frame_pool; int fifo; int partial_buf; } ;
typedef int FFFramePool ;
typedef TYPE_1__ AVFilterLink ;


 int av_frame_free (int *) ;
 int av_freep (TYPE_1__**) ;
 int ff_frame_pool_uninit (int **) ;
 int ff_framequeue_free (int *) ;

void avfilter_link_free(AVFilterLink **link)
{
    if (!*link)
        return;

    av_frame_free(&(*link)->partial_buf);
    ff_framequeue_free(&(*link)->fifo);
    ff_frame_pool_uninit((FFFramePool**)&(*link)->frame_pool);

    av_freep(link);
}

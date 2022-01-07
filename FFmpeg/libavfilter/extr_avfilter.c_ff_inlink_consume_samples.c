
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fifo; scalar_t__ status_in; } ;
typedef int AVFrame ;
typedef TYPE_1__ AVFilterLink ;


 unsigned int FFMIN (unsigned int,int ) ;
 int av_assert1 (unsigned int) ;
 int consume_update (TYPE_1__*,int *) ;
 int ff_framequeue_queued_samples (int *) ;
 int ff_inlink_check_available_samples (TYPE_1__*,unsigned int) ;
 int take_samples (TYPE_1__*,unsigned int,unsigned int,int **) ;

int ff_inlink_consume_samples(AVFilterLink *link, unsigned min, unsigned max,
                            AVFrame **rframe)
{
    AVFrame *frame;
    int ret;

    av_assert1(min);
    *rframe = ((void*)0);
    if (!ff_inlink_check_available_samples(link, min))
        return 0;
    if (link->status_in)
        min = FFMIN(min, ff_framequeue_queued_samples(&link->fifo));
    ret = take_samples(link, min, max, &frame);
    if (ret < 0)
        return ret;
    consume_update(link, frame);
    *rframe = frame;
    return 1;
}

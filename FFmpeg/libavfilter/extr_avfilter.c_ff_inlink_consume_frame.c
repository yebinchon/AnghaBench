
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ samples_skipped; } ;
struct TYPE_15__ {TYPE_9__ fifo; } ;
struct TYPE_14__ {int nb_samples; } ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ AVFilterLink ;


 int consume_update (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* ff_framequeue_peek (TYPE_9__*,int ) ;
 TYPE_1__* ff_framequeue_take (TYPE_9__*) ;
 int ff_inlink_check_available_frame (TYPE_2__*) ;
 int ff_inlink_consume_samples (TYPE_2__*,int ,int ,TYPE_1__**) ;

int ff_inlink_consume_frame(AVFilterLink *link, AVFrame **rframe)
{
    AVFrame *frame;

    *rframe = ((void*)0);
    if (!ff_inlink_check_available_frame(link))
        return 0;

    if (link->fifo.samples_skipped) {
        frame = ff_framequeue_peek(&link->fifo, 0);
        return ff_inlink_consume_samples(link, frame->nb_samples, frame->nb_samples, rframe);
    }

    frame = ff_framequeue_take(&link->fifo);
    consume_update(link, frame);
    *rframe = frame;
    return 1;
}

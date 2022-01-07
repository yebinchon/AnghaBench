
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status_in; int fifo; scalar_t__ frame_blocked_in; scalar_t__ frame_wanted_out; scalar_t__ status_out; } ;
typedef int AVFrame ;
typedef TYPE_1__ AVFilterLink ;


 int AV_NOPTS_VALUE ;
 int av_frame_free (int **) ;
 int ff_avfilter_link_set_out_status (TYPE_1__*,int,int ) ;
 scalar_t__ ff_framequeue_queued_frames (int *) ;
 int * ff_framequeue_take (int *) ;

void ff_inlink_set_status(AVFilterLink *link, int status)
{
    if (link->status_out)
        return;
    link->frame_wanted_out = 0;
    link->frame_blocked_in = 0;
    ff_avfilter_link_set_out_status(link, status, AV_NOPTS_VALUE);
    while (ff_framequeue_queued_frames(&link->fifo)) {
           AVFrame *frame = ff_framequeue_take(&link->fifo);
           av_frame_free(&frame);
    }
    if (!link->status_in)
        link->status_in = status;
}

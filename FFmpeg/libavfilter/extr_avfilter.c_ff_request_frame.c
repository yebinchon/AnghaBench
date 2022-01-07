
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int status_out; int frame_wanted_out; int src; int status_in_pts; scalar_t__ status_in; TYPE_2__* dst; int fifo; } ;
struct TYPE_8__ {int ready; TYPE_1__* filter; } ;
struct TYPE_7__ {int activate; } ;
typedef TYPE_3__ AVFilterLink ;


 int FF_TPRINTF_START (int *,int ) ;
 int av_assert1 (int) ;
 int ff_avfilter_link_set_out_status (TYPE_3__*,scalar_t__,int ) ;
 int ff_filter_set_ready (int ,int) ;
 scalar_t__ ff_framequeue_queued_frames (int *) ;
 int ff_tlog_link (int *,TYPE_3__*,int) ;
 int request_frame ;

int ff_request_frame(AVFilterLink *link)
{
    FF_TPRINTF_START(((void*)0), request_frame); ff_tlog_link(((void*)0), link, 1);

    av_assert1(!link->dst->filter->activate);
    if (link->status_out)
        return link->status_out;
    if (link->status_in) {
        if (ff_framequeue_queued_frames(&link->fifo)) {
            av_assert1(!link->frame_wanted_out);
            av_assert1(link->dst->ready >= 300);
            return 0;
        } else {



            ff_avfilter_link_set_out_status(link, link->status_in, link->status_in_pts);
            return link->status_out;
        }
    }
    link->frame_wanted_out = 1;
    ff_filter_set_ready(link->src, 100);
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_4__ {int status_out; int src; int dst; int frame_wanted_out; } ;
typedef TYPE_1__ AVFilterLink ;


 scalar_t__ AV_NOPTS_VALUE ;
 int av_assert0 (int) ;
 int ff_filter_set_ready (int ,int) ;
 int ff_update_link_current_pts (TYPE_1__*,scalar_t__) ;
 int filter_unblock (int ) ;

void ff_avfilter_link_set_out_status(AVFilterLink *link, int status, int64_t pts)
{
    av_assert0(!link->frame_wanted_out);
    av_assert0(!link->status_out);
    link->status_out = status;
    if (pts != AV_NOPTS_VALUE)
        ff_update_link_current_pts(link, pts);
    filter_unblock(link->dst);
    ff_filter_set_ready(link->src, 200);
}

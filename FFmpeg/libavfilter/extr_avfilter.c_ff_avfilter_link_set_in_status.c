
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int status_in; int dst; scalar_t__ frame_blocked_in; scalar_t__ frame_wanted_out; int status_in_pts; } ;
typedef TYPE_1__ AVFilterLink ;


 int av_assert0 (int) ;
 int ff_filter_set_ready (int ,int) ;
 int filter_unblock (int ) ;

void ff_avfilter_link_set_in_status(AVFilterLink *link, int status, int64_t pts)
{
    if (link->status_in == status)
        return;
    av_assert0(!link->status_in);
    link->status_in = status;
    link->status_in_pts = pts;
    link->frame_wanted_out = 0;
    link->frame_blocked_in = 0;
    filter_unblock(link->dst);
    ff_filter_set_ready(link->dst, 200);
}

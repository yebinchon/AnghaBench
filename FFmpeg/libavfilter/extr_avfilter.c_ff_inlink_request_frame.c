
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frame_wanted_out; int src; int status_out; int status_in; } ;
typedef TYPE_1__ AVFilterLink ;


 int av_assert1 (int) ;
 int ff_filter_set_ready (int ,int) ;

void ff_inlink_request_frame(AVFilterLink *link)
{
    av_assert1(!link->status_in);
    av_assert1(!link->status_out);
    link->frame_wanted_out = 1;
    ff_filter_set_ready(link->src, 100);
}

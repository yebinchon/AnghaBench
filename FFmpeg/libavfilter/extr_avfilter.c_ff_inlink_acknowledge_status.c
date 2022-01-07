
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {int status_out; int status_in; int current_pts; int status_in_pts; int fifo; } ;
typedef TYPE_1__ AVFilterLink ;


 scalar_t__ ff_framequeue_queued_frames (int *) ;
 int ff_update_link_current_pts (TYPE_1__*,int ) ;

int ff_inlink_acknowledge_status(AVFilterLink *link, int *rstatus, int64_t *rpts)
{
    *rpts = link->current_pts;
    if (ff_framequeue_queued_frames(&link->fifo))
        return *rstatus = 0;
    if (link->status_out)
        return *rstatus = link->status_out;
    if (!link->status_in)
        return *rstatus = 0;
    *rstatus = link->status_out = link->status_in;
    ff_update_link_current_pts(link, link->status_in_pts);
    *rpts = link->current_pts;
    return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fifo; } ;
typedef TYPE_1__ AVFilterLink ;


 size_t ff_framequeue_queued_frames (int *) ;

size_t ff_inlink_queued_frames(AVFilterLink *link)
{
    return ff_framequeue_queued_frames(&link->fifo);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ status_in; int fifo; } ;
typedef TYPE_1__ AVFilterLink ;


 scalar_t__ ff_framequeue_queued_frames (int *) ;
 unsigned int ff_framequeue_queued_samples (int *) ;

__attribute__((used)) static int samples_ready(AVFilterLink *link, unsigned min)
{
    return ff_framequeue_queued_frames(&link->fifo) &&
           (ff_framequeue_queued_samples(&link->fifo) >= min ||
            link->status_in);
}

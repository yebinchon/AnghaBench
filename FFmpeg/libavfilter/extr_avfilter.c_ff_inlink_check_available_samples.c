
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint64_t ;
struct TYPE_3__ {scalar_t__ status_in; int fifo; } ;
typedef TYPE_1__ AVFilterLink ;


 int av_assert1 (unsigned int) ;
 unsigned int ff_framequeue_queued_samples (int *) ;

int ff_inlink_check_available_samples(AVFilterLink *link, unsigned min)
{
    uint64_t samples = ff_framequeue_queued_samples(&link->fifo);
    av_assert1(min);
    return samples >= min || (link->status_in && samples);
}

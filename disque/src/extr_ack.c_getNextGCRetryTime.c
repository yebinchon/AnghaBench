
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ mstime_t ;
struct TYPE_4__ {int gc_retry; } ;
typedef TYPE_1__ job ;
struct TYPE_5__ {scalar_t__ mstime; } ;


 scalar_t__ JOB_GC_RETRY_MAX_PERIOD ;
 int JOB_GC_RETRY_MIN_PERIOD ;
 scalar_t__ randomTimeError (int) ;
 TYPE_2__ server ;

mstime_t getNextGCRetryTime(job *job) {
    mstime_t period = JOB_GC_RETRY_MIN_PERIOD * (1 << job->gc_retry);
    if (period > JOB_GC_RETRY_MAX_PERIOD) period = JOB_GC_RETRY_MAX_PERIOD;


    return server.mstime + period + randomTimeError(500);
}

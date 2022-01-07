
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef TYPE_2__* processor_t ;
struct TYPE_6__ {scalar_t__ current_pri; struct TYPE_6__* processor_primary; } ;
struct TYPE_5__ {scalar_t__ sched_pri; } ;


 scalar_t__ BASEPRI_RTQUEUES ;
 int sched_allow_rt_smt ;

__attribute__((used)) static bool
sched_multiq_thread_avoid_processor(processor_t processor, thread_t thread)
{
 if (processor->processor_primary != processor) {




  if ((processor->processor_primary->current_pri >= BASEPRI_RTQUEUES) && ((thread->sched_pri < BASEPRI_RTQUEUES) || !sched_allow_rt_smt)) {
   return 1;
  }
 }

 return 0;
}

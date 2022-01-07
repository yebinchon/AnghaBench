
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* run_queue_t ;
typedef int processor_t ;
typedef int boolean_t ;
struct TYPE_4__ {int highq; } ;


 int MAX (int ,int ) ;
 TYPE_1__* multiq_bound_runq (int ) ;
 TYPE_1__* multiq_main_entryq (int ) ;

__attribute__((used)) static boolean_t
sched_multiq_processor_queue_has_priority(
                                          processor_t processor,
                                          int priority,
                                          boolean_t gte)
{
 run_queue_t main_runq = multiq_main_entryq(processor);
 run_queue_t bound_runq = multiq_bound_runq(processor);

 int qpri = MAX(main_runq->highq, bound_runq->highq);

 if (gte)
  return qpri >= priority;
 else
  return qpri > priority;
}

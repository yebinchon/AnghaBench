
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int run_queue_t ;
typedef TYPE_2__* processor_t ;
typedef int processor_set_t ;
typedef int boolean_t ;
struct TYPE_10__ {int processor_set; } ;
struct TYPE_9__ {TYPE_2__* runq; } ;


 TYPE_2__* PROCESSOR_NULL ;
 int assert (int) ;
 int dualq_runq_for_thread (TYPE_2__*,TYPE_1__*) ;
 int pset_lock (int ) ;
 int pset_unlock (int ) ;
 int run_queue_remove (int ,TYPE_1__*) ;

__attribute__((used)) static boolean_t
sched_dualq_processor_queue_remove(
                                   processor_t processor,
                                   thread_t thread)
{
 run_queue_t rq;
 processor_set_t pset = processor->processor_set;

 pset_lock(pset);

 rq = dualq_runq_for_thread(processor, thread);

 if (processor == thread->runq) {




  run_queue_remove(rq, thread);
 }
 else {




  assert(thread->runq == PROCESSOR_NULL);
  processor = PROCESSOR_NULL;
 }

 pset_unlock(pset);

 return (processor != PROCESSOR_NULL);
}

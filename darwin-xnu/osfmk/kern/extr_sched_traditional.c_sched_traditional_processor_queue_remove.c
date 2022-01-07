
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int run_queue_t ;
typedef TYPE_2__* processor_t ;
typedef int processor_set_t ;
typedef int boolean_t ;
struct TYPE_11__ {int processor_set; } ;
struct TYPE_10__ {TYPE_2__* runq; } ;


 TYPE_2__* PROCESSOR_NULL ;
 int assert (int) ;
 int pset_lock (int ) ;
 int pset_unlock (int ) ;
 int run_queue_remove (int ,TYPE_1__*) ;
 int runq_consider_decr_bound_count (TYPE_2__*,TYPE_1__*) ;
 int runq_for_processor (TYPE_2__*) ;

__attribute__((used)) static boolean_t
sched_traditional_processor_queue_remove(processor_t processor,
                                         thread_t thread)
{
 processor_set_t pset;
 run_queue_t rq;

 pset = processor->processor_set;
 pset_lock(pset);

 rq = runq_for_processor(processor);

 if (processor == thread->runq) {




  runq_consider_decr_bound_count(processor, thread);
  run_queue_remove(rq, thread);
 }
 else {




  assert(thread->runq == PROCESSOR_NULL);
  processor = PROCESSOR_NULL;
 }

 pset_unlock(pset);

 return (processor != PROCESSOR_NULL);
}

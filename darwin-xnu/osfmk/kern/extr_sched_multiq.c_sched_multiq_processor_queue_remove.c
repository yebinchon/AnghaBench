
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef TYPE_2__* processor_t ;
typedef int processor_set_t ;
typedef int boolean_t ;
struct TYPE_11__ {int processor_set; } ;
struct TYPE_10__ {int sched_group; TYPE_2__* runq; TYPE_2__* bound_processor; } ;


 int FALSE ;
 TYPE_2__* PROCESSOR_NULL ;
 int TRUE ;
 int assert (int) ;
 int multiq_bound_runq (TYPE_2__*) ;
 int multiq_main_entryq (TYPE_2__*) ;
 int pset_lock (int ) ;
 int pset_unlock (int ) ;
 int run_queue_remove (int ,TYPE_1__*) ;
 int sched_group_remove_thread (int ,int ,TYPE_1__*) ;

__attribute__((used)) static boolean_t
sched_multiq_processor_queue_remove(
                                    processor_t processor,
                                    thread_t thread)
{
 boolean_t removed = FALSE;
 processor_set_t pset = processor->processor_set;

 pset_lock(pset);

 if (thread->runq != PROCESSOR_NULL) {





  assert(thread->runq == processor);

  if (thread->bound_processor != PROCESSOR_NULL) {
   assert(processor == thread->bound_processor);
   run_queue_remove(multiq_bound_runq(processor), thread);
   thread->runq = PROCESSOR_NULL;
  } else {
   sched_group_remove_thread(multiq_main_entryq(processor),
                             thread->sched_group,
                             thread);
  }

  removed = TRUE;
 }

 pset_unlock(pset);

 return removed;
}

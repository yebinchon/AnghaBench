
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef scalar_t__ processor_t ;
typedef int integer_t ;
typedef int boolean_t ;
struct TYPE_5__ {scalar_t__ chosen_processor; scalar_t__ bound_processor; scalar_t__ runq; int sched_group; } ;


 int FALSE ;
 scalar_t__ PROCESSOR_NULL ;
 int assert (int) ;
 int multiq_bound_runq (scalar_t__) ;
 int multiq_main_entryq (scalar_t__) ;
 int run_queue_enqueue (int ,TYPE_1__*,int ) ;
 int sched_group_enqueue_thread (int ,int ,TYPE_1__*,int ) ;

__attribute__((used)) static boolean_t
sched_multiq_processor_enqueue(
                               processor_t processor,
                               thread_t thread,
                               integer_t options)
{
 boolean_t result;

 assert(processor == thread->chosen_processor);

 if (thread->bound_processor != PROCESSOR_NULL) {
  assert(thread->bound_processor == processor);

  result = run_queue_enqueue(multiq_bound_runq(processor), thread, options);
  thread->runq = processor;

  return result;
 }

 sched_group_enqueue_thread(multiq_main_entryq(processor),
                            thread->sched_group,
                            thread, options);

 thread->runq = processor;

 return (FALSE);
}

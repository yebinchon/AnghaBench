
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int run_queue_t ;
typedef int processor_t ;
typedef int integer_t ;
typedef int boolean_t ;
struct TYPE_5__ {int runq; } ;


 int dualq_runq_for_thread (int ,TYPE_1__*) ;
 int run_queue_enqueue (int ,TYPE_1__*,int ) ;

__attribute__((used)) static boolean_t
sched_dualq_processor_enqueue(
                              processor_t processor,
                              thread_t thread,
                              integer_t options)
{
 run_queue_t rq = dualq_runq_for_thread(processor, thread);
 boolean_t result;

 result = run_queue_enqueue(rq, thread, options);
 thread->runq = processor;

 return (result);
}

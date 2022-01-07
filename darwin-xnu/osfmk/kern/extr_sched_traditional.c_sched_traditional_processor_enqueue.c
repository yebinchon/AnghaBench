
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


 int run_queue_enqueue (int ,TYPE_1__*,int ) ;
 int runq_consider_incr_bound_count (int ,TYPE_1__*) ;
 int runq_for_processor (int ) ;

__attribute__((used)) static boolean_t
sched_traditional_processor_enqueue(processor_t processor,
                                    thread_t thread,
                                    integer_t options)
{
 run_queue_t rq = runq_for_processor(processor);
 boolean_t result;

 result = run_queue_enqueue(rq, thread, options);
 thread->runq = processor;
 runq_consider_incr_bound_count(processor, thread);

 return (result);
}

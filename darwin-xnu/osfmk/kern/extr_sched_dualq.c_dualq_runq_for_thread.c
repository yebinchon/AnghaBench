
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int run_queue_t ;
typedef scalar_t__ processor_t ;
struct TYPE_3__ {scalar_t__ bound_processor; } ;


 scalar_t__ PROCESSOR_NULL ;
 int assert (int) ;
 int dualq_bound_runq (scalar_t__) ;
 int dualq_main_runq (scalar_t__) ;

__attribute__((used)) __attribute__((always_inline))
static inline run_queue_t dualq_runq_for_thread(processor_t processor, thread_t thread)
{
 if (thread->bound_processor == PROCESSOR_NULL) {
  return dualq_main_runq(processor);
 } else {
  assert(thread->bound_processor == processor);
  return dualq_bound_runq(processor);
 }
}

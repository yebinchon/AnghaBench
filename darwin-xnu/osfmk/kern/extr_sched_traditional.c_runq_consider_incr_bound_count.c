
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
typedef TYPE_3__* processor_t ;
struct TYPE_8__ {int runq_bound_count; TYPE_1__* processor_set; } ;
struct TYPE_7__ {scalar_t__ bound_processor; } ;
struct TYPE_6__ {int pset_runq_bound_count; } ;


 scalar_t__ PROCESSOR_NULL ;
 int assert (int) ;
 scalar_t__ sched_traditional_use_pset_runqueue ;

__attribute__((used)) __attribute__((always_inline))
static inline void runq_consider_incr_bound_count(processor_t processor,
        thread_t thread)
{
 if (thread->bound_processor == PROCESSOR_NULL)
  return;

 assert(thread->bound_processor == processor);

 if (sched_traditional_use_pset_runqueue)
  processor->processor_set->pset_runq_bound_count++;

 processor->runq_bound_count++;
}

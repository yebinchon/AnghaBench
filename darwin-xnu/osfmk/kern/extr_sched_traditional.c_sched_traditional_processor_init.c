
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* processor_t ;
struct TYPE_3__ {scalar_t__ runq_bound_count; int runq; } ;


 int run_queue_init (int *) ;
 int sched_traditional_use_pset_runqueue ;

__attribute__((used)) static void
sched_traditional_processor_init(processor_t processor)
{
 if (!sched_traditional_use_pset_runqueue) {
  run_queue_init(&processor->runq);
 }
 processor->runq_bound_count = 0;
}

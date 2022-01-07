
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* processor_set_t ;
struct TYPE_3__ {scalar_t__ pset_runq_bound_count; int pset_runq; } ;


 int run_queue_init (int *) ;
 scalar_t__ sched_traditional_use_pset_runqueue ;

__attribute__((used)) static void
sched_traditional_pset_init(processor_set_t pset)
{
 if (sched_traditional_use_pset_runqueue) {
  run_queue_init(&pset->pset_runq);
 }
 pset->pset_runq_bound_count = 0;
}

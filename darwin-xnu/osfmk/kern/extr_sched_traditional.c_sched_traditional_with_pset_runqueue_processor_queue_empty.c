
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* processor_t ;
typedef TYPE_2__* processor_set_t ;
typedef int boolean_t ;
struct TYPE_8__ {int count; } ;
struct TYPE_7__ {scalar_t__ pset_runq_bound_count; } ;
struct TYPE_6__ {scalar_t__ runq_bound_count; TYPE_2__* processor_set; } ;


 TYPE_4__* runq_for_processor (TYPE_1__*) ;

__attribute__((used)) static boolean_t
sched_traditional_with_pset_runqueue_processor_queue_empty(processor_t processor)
{
 processor_set_t pset = processor->processor_set;
 int count = runq_for_processor(processor)->count;
 count -= pset->pset_runq_bound_count;
 count += processor->runq_bound_count;

 return count == 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* processor_set_t ;
struct TYPE_5__ {int count; } ;
struct TYPE_6__ {int load_average; TYPE_1__ pset_runq; int * cpu_state_map; } ;


 size_t PROCESSOR_RUNNING ;
 int PSET_LOAD_NUMERATOR_SHIFT ;
 int bit_count (int ) ;
 int rt_runq_count (TYPE_2__*) ;

void
sched_update_pset_load_average(processor_set_t pset)
{
 int load = ((bit_count(pset->cpu_state_map[PROCESSOR_RUNNING]) + pset->pset_runq.count + rt_runq_count(pset)) << PSET_LOAD_NUMERATOR_SHIFT);
 int new_load_average = (pset->load_average + load) >> 1;

 pset->load_average = new_load_average;



}

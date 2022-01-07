
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* processor_t ;
typedef TYPE_2__* processor_set_t ;
struct TYPE_6__ {int primary_map; } ;
struct TYPE_5__ {int cpu_id; TYPE_2__* processor_set; void* is_SMT; struct TYPE_5__* processor_secondary; struct TYPE_5__* processor_primary; } ;


 void* TRUE ;
 int assert (int) ;
 int atomic_bit_clear (int *,int ,int ) ;
 int memory_order_relaxed ;

void
processor_set_primary(
 processor_t processor,
 processor_t primary)
{
 assert(processor->processor_primary == primary || processor->processor_primary == processor);

 processor->processor_primary = primary;

 assert(primary->processor_secondary == ((void*)0) || primary->processor_secondary == processor);
 if (primary != processor) {




  assert(processor->processor_secondary == ((void*)0));
  primary->processor_secondary = processor;

  primary->is_SMT = TRUE;
  processor->is_SMT = TRUE;

  processor_set_t pset = processor->processor_set;
  atomic_bit_clear(&pset->primary_map, processor->cpu_id, memory_order_relaxed);
 }
}

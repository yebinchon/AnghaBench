
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union corpse_creation_gate {unsigned long corpses; int value; } ;


 int atomic_load_explicit (int *,int ) ;
 int inflight_corpses ;
 int memory_order_relaxed ;

unsigned long
total_corpses_count(void)
{
 union corpse_creation_gate gate;

 gate.value = atomic_load_explicit(&inflight_corpses, memory_order_relaxed);
 return gate.corpses;
}

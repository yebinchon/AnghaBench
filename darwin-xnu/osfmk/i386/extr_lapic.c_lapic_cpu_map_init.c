
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_CPUS ;
 int MAX_LAPICIDS ;
 int* cpu_to_lapic ;
 int* lapic_to_cpu ;

void
lapic_cpu_map_init(void)
{
 int i;

 for (i = 0; i < MAX_CPUS; i++)
  cpu_to_lapic[i] = -1;
 for (i = 0; i < MAX_LAPICIDS; i++)
  lapic_to_cpu[i] = -1;
}

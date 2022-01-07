
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_CPUS ;
 int MAX_LAPICIDS ;
 int assert (int) ;
 int* cpu_to_lapic ;
 int* lapic_to_cpu ;

void
lapic_cpu_map(int apic_id, int cpu)
{
 assert(apic_id < MAX_LAPICIDS);
 assert(cpu < MAX_CPUS);
 cpu_to_lapic[cpu] = apic_id;
 lapic_to_cpu[apic_id] = cpu;
}

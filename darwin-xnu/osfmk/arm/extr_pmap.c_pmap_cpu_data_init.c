
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_number () ;
 int pmap_cpu_data_init_internal (int ) ;

void
pmap_cpu_data_init(void)
{
 pmap_cpu_data_init_internal(cpu_number());
}

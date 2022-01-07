
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pmap_cpu_data_t ;
struct TYPE_2__ {int cpu_pmap_cpu_data; } ;


 TYPE_1__* getCpuDatap () ;

pmap_cpu_data_t *
pmap_get_cpu_data(void)
{
 pmap_cpu_data_t * pmap_cpu_data = ((void*)0);

 pmap_cpu_data = &getCpuDatap()->cpu_pmap_cpu_data;

 return pmap_cpu_data;
}

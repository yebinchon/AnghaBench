
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cpu_phys_number; } ;
typedef TYPE_1__ cpu_data_t ;


 int TOPO_DBG (char*,void const*,void const*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
lapicid_cmp(const void *x, const void *y)
{
 cpu_data_t *cpu_x = *((cpu_data_t **)(uintptr_t)x);
 cpu_data_t *cpu_y = *((cpu_data_t **)(uintptr_t)y);

 TOPO_DBG("lapicid_cmp(%p,%p) (%d,%d)\n",
  x, y, cpu_x->cpu_phys_number, cpu_y->cpu_phys_number);
 if (cpu_x->cpu_phys_number < cpu_y->cpu_phys_number)
  return -1;
 if (cpu_x->cpu_phys_number == cpu_y->cpu_phys_number)
  return 0;
 return 1;
}

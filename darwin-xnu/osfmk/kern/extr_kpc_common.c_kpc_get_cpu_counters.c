
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ boolean_t ;


 int assert (int *) ;
 int kpc_get_all_cpus_counters (int ,int*,int *) ;
 int kpc_get_curcpu_counters (int ,int*,int *) ;

int
kpc_get_cpu_counters(boolean_t all_cpus, uint32_t classes,
                     int *curcpu, uint64_t *buf)
{
 assert(buf);






 if (all_cpus)
  return kpc_get_all_cpus_counters(classes, curcpu, buf);
 else
  return kpc_get_curcpu_counters(classes, curcpu, buf);
}

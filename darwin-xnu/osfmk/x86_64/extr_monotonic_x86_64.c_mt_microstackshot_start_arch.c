
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int ASYNC ;
 int CPUMASK_ALL ;
 scalar_t__ CTR_MAX ;
 int ENOTSUP ;
 int mp_cpus_call (int ,int ,int ,int *) ;
 scalar_t__* mt_core_reset_values ;
 int mt_core_supported ;
 size_t mt_microstackshot_ctr ;
 int mt_microstackshot_start_remote ;

int
mt_microstackshot_start_arch(uint64_t period)
{
 if (!mt_core_supported) {
  return ENOTSUP;
 }

 mt_core_reset_values[mt_microstackshot_ctr] = CTR_MAX - period;
 mp_cpus_call(CPUMASK_ALL, ASYNC, mt_microstackshot_start_remote,
   ((void*)0));
 return 0;
}

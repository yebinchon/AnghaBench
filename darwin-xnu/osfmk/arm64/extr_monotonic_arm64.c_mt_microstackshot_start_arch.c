
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ CTR_MAX ;
 int TRUE ;
 int cpu_broadcast_xcall (int *,int ,int ,int ) ;
 scalar_t__* mt_core_reset_values ;
 size_t mt_microstackshot_ctr ;
 int mt_microstackshot_start_remote ;
 int mt_xc_sync ;

int
mt_microstackshot_start_arch(uint64_t period)
{
 mt_core_reset_values[mt_microstackshot_ctr] = CTR_MAX - period;
 cpu_broadcast_xcall(&mt_xc_sync, TRUE, mt_microstackshot_start_remote,
   mt_microstackshot_start_remote );
 return 0;
}

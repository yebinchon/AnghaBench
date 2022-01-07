
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_5__ {scalar_t__ cpu_sleep_token; scalar_t__ cpu_CLW_active; scalar_t__ cpu_CLWClean_req; scalar_t__ cpu_CLWFlush_req; } ;
typedef TYPE_1__ cpu_data_t ;
struct TYPE_6__ {scalar_t__ cpu_data_vaddr; } ;


 scalar_t__ ARM_CPU_ON_SLEEP_PATH ;
 TYPE_1__ BootCpuData ;
 int CleanPoC_DcacheRegion (int ,int) ;
 int CleanPoU_Dcache () ;
 TYPE_3__* CpuDataEntries ;
 int DMB_ISH ;
 int DSB_SY ;
 scalar_t__ IOS_STATE ;
 int IOS_STATE_SIZE ;
 unsigned int MAX_CPUS ;
 scalar_t__ TRUE ;
 int __builtin_arm_dmb (int ) ;
 int __builtin_arm_dsb (int ) ;
 int __builtin_arm_wfe () ;
 int bcopy (void const*,void*,int ) ;
 TYPE_1__* getCpuDatap () ;
 int ml_get_timebase () ;
 int platform_cache_disable () ;
 int platform_cache_shutdown () ;
 int rtclock_base_abstime ;
 scalar_t__ suspend_signature ;
 int wake_abstime ;

__attribute__((noreturn))
void
ml_arm_sleep(void)
{
 cpu_data_t *cpu_data_ptr = getCpuDatap();

 if (cpu_data_ptr == &BootCpuData) {
  cpu_data_t *target_cdp;
  unsigned int cpu;

  for (cpu=0; cpu < MAX_CPUS; cpu++) {
   target_cdp = (cpu_data_t *)CpuDataEntries[cpu].cpu_data_vaddr;
   if(target_cdp == (cpu_data_t *)((void*)0))
    break;

   if (target_cdp == cpu_data_ptr)
    continue;

   while (target_cdp->cpu_sleep_token != ARM_CPU_ON_SLEEP_PATH);
  }



  rtclock_base_abstime = ml_get_timebase();
  wake_abstime = rtclock_base_abstime;

 } else {
  platform_cache_disable();
  CleanPoU_Dcache();
 }
 cpu_data_ptr->cpu_sleep_token = ARM_CPU_ON_SLEEP_PATH;






 if (cpu_data_ptr == &BootCpuData) {
  platform_cache_disable();
  platform_cache_shutdown();
  bcopy((const void *)suspend_signature, (void *)(IOS_STATE), IOS_STATE_SIZE);
 } else
  CleanPoC_DcacheRegion((vm_offset_t) cpu_data_ptr, sizeof(cpu_data_t));

 __builtin_arm_dsb(DSB_SY);
 while (TRUE) {



 }
}

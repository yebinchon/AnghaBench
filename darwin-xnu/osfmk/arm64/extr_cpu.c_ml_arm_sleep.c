
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ cpu_sleep_token; scalar_t__* coresight_base; } ;
typedef TYPE_1__ cpu_data_t ;
struct TYPE_6__ {scalar_t__ cpu_data_vaddr; } ;
typedef int SleepToken ;


 scalar_t__ ARM_CPU_ON_SLEEP_PATH ;
 scalar_t__ ARM_DBG_LOCK_ACCESS_KEY ;
 scalar_t__ ARM_DEBUG_OFFSET_DBGLAR ;
 scalar_t__ ARM_DEBUG_OFFSET_DBGPRCR ;
 TYPE_1__ BootCpuData ;
 size_t CORESIGHT_ED ;
 int CleanPoU_Dcache () ;
 int CleanPoU_DcacheRegion (scalar_t__,int) ;
 TYPE_3__* CpuDataEntries ;
 int DMB_ISH ;
 scalar_t__ FALSE ;
 int __builtin_arm_dmb (int ) ;
 int __builtin_arm_wfe () ;
 int arm64_prepare_for_sleep () ;
 scalar_t__ arm64_stall_sleep ;
 int bcopy (void const*,void*,int) ;
 TYPE_1__* getCpuDatap () ;
 int ml_get_max_cpu_number () ;
 int ml_get_timebase () ;
 int mt_sleep () ;
 int panic (char*) ;
 int platform_cache_shutdown () ;
 scalar_t__ sleepTokenBuffer ;
 scalar_t__ suspend_signature ;
 int wake_abstime ;

__attribute__((noreturn))
void
ml_arm_sleep(void)
{
 cpu_data_t *cpu_data_ptr = getCpuDatap();

 if (cpu_data_ptr == &BootCpuData) {
  cpu_data_t *target_cdp;
  int cpu;
  int max_cpu;

  max_cpu = ml_get_max_cpu_number();
  for (cpu=0; cpu <= max_cpu; cpu++) {
   target_cdp = (cpu_data_t *)CpuDataEntries[cpu].cpu_data_vaddr;

   if ((target_cdp == ((void*)0)) || (target_cdp == cpu_data_ptr))
    continue;

   while (target_cdp->cpu_sleep_token != ARM_CPU_ON_SLEEP_PATH);
  }





  wake_abstime = ml_get_timebase();
 } else {
  CleanPoU_Dcache();
 }

 cpu_data_ptr->cpu_sleep_token = ARM_CPU_ON_SLEEP_PATH;

 if (cpu_data_ptr == &BootCpuData) {
  if (cpu_data_ptr->coresight_base[CORESIGHT_ED]) {
   *(volatile uint32_t *)(cpu_data_ptr->coresight_base[CORESIGHT_ED] + ARM_DEBUG_OFFSET_DBGLAR) = ARM_DBG_LOCK_ACCESS_KEY;
   *(volatile uint32_t *)(cpu_data_ptr->coresight_base[CORESIGHT_ED] + ARM_DEBUG_OFFSET_DBGPRCR) = 0;
  }





  arm64_prepare_for_sleep();
 } else {
  CleanPoU_DcacheRegion((vm_offset_t) cpu_data_ptr, sizeof(cpu_data_t));





  if (cpu_data_ptr->coresight_base[CORESIGHT_ED]) {
   *(volatile uint32_t *)(cpu_data_ptr->coresight_base[CORESIGHT_ED] + ARM_DEBUG_OFFSET_DBGLAR) = ARM_DBG_LOCK_ACCESS_KEY;
   *(volatile uint32_t *)(cpu_data_ptr->coresight_base[CORESIGHT_ED] + ARM_DEBUG_OFFSET_DBGPRCR) = 0;
  }


  arm64_prepare_for_sleep();
 }
}

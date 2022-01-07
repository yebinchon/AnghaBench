
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int (* processor_idle_t ) (int ,int ,int*) ;
struct TYPE_4__ {int cpu_signal; int rtcPop; scalar_t__ idle_timer_notify; int idle_timer_deadline; int cpu_id; scalar_t__ cpu_idle_notify; int * cpu_user_debug; int cpu_active_thread; } ;
typedef TYPE_1__ cpu_data_t ;


 int ClearIdlePop (int ) ;
 int DSB_SY ;
 int FALSE ;
 int FlushPoC_Dcache () ;
 int Idle_load_context () ;
 int InvalidatePoU_Icache () ;
 int SIGPdisabled ;
 int SetIdlePop () ;
 int TRUE ;
 int __builtin_arm_dsb (int ) ;
 int __builtin_arm_wfi () ;
 int arm64_force_wfi_clock_gate () ;
 int arm_debug_set (int *) ;
 int clock_absolutetime_interval_to_deadline (int,int*) ;
 int clock_delay_until (int) ;
 int cpu_idle_exit (int ) ;
 int current_thread () ;
 int cyclone_typhoon_prepare_for_wfi () ;
 int cyclone_typhoon_return_from_wfi () ;
 int flush_core_tlb () ;
 TYPE_1__* getCpuDatap () ;
 int idle_enable ;
 int kernel_pmap ;
 int kpc_idle () ;
 int mt_cpu_idle (TYPE_1__*) ;
 int platform_cache_idle_enter () ;
 int platform_cache_idle_exit () ;
 int pmap_switch_user_ttb (int ) ;
 int stub1 (int ,int ,int*) ;
 int timer_resync_deadlines () ;
 int wfi ;
 int wfi_delay ;
 int wfi_flags ;

void __attribute__((noreturn))
cpu_idle(void)
{
 cpu_data_t *cpu_data_ptr = getCpuDatap();
 uint64_t new_idle_timeout_ticks = 0x0ULL, lastPop;

 if ((!idle_enable) || (cpu_data_ptr->cpu_signal & SIGPdisabled))
  Idle_load_context();
 if (!SetIdlePop())
  Idle_load_context();
 lastPop = cpu_data_ptr->rtcPop;

 pmap_switch_user_ttb(kernel_pmap);
 cpu_data_ptr->cpu_active_thread = current_thread();
 if (cpu_data_ptr->cpu_user_debug)
  arm_debug_set(((void*)0));
 cpu_data_ptr->cpu_user_debug = ((void*)0);

 if (cpu_data_ptr->cpu_idle_notify)
  ((processor_idle_t) cpu_data_ptr->cpu_idle_notify) (cpu_data_ptr->cpu_id, TRUE, &new_idle_timeout_ticks);

 if (cpu_data_ptr->idle_timer_notify != 0) {
  if (new_idle_timeout_ticks == 0x0ULL) {

   cpu_data_ptr->idle_timer_deadline = 0x0ULL;
  } else {

   clock_absolutetime_interval_to_deadline(new_idle_timeout_ticks, &cpu_data_ptr->idle_timer_deadline);
  }
  timer_resync_deadlines();
  if (cpu_data_ptr->rtcPop != lastPop)
   SetIdlePop();
 }
 if (wfi) {
  platform_cache_idle_enter();
  __builtin_arm_dsb(DSB_SY);
  __builtin_arm_wfi();
  platform_cache_idle_exit();
 }

 ClearIdlePop(TRUE);

 cpu_idle_exit(FALSE);
}

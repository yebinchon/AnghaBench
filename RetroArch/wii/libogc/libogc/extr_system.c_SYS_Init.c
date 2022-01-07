
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int alarm_st ;


 int DisableWriteGatherPipe () ;
 int IRQMASK (int ) ;
 int IRQ_PI_RSW ;
 int IRQ_Request (int ,int ,int *) ;
 int KERNEL_HEAP ;
 int LWP_MAX_WATCHDOGS ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int _V_EXPORTNAME () ;
 int __IPC_ClntInit () ;
 int __MaskIrq (int ) ;
 int __RSWHandler ;
 int __SYS_InitCallbacks () ;
 int __SYS_PreInit () ;
 int __SYS_SetBootTime () ;
 int __decrementer_init () ;
 int __dsp_bootstrap () ;
 int __exception_init () ;
 int __exi_init () ;
 int __init_syscall_array () ;
 int __ipcbuffer_init () ;
 int __irq_init () ;
 int __libc_init (int) ;
 int __lowmem_init () ;
 int __lwp_cond_init () ;
 int __lwp_mqbox_init () ;
 int __lwp_mutex_init () ;
 int __lwp_objmgr_initinfo (int *,int ,int) ;
 int __lwp_priority_init () ;
 int __lwp_queue_init_empty (int *) ;
 int __lwp_sema_init () ;
 int __lwp_sysinit () ;
 int __lwp_thread_coreinit () ;
 int __lwp_thread_startmultitasking () ;
 int __lwp_watchdog_init () ;
 int __lwp_wkspace_init (int ) ;
 int __memlock_init () ;
 int __memprotect_init () ;
 int __si_init () ;
 int __sram_init () ;
 int __sys_inIPL ;
 int __sys_state_init () ;
 int __systemcall_init () ;
 int __timesystem_init () ;
 int sys_alarm_objects ;
 int sys_reset_func_queue ;
 int system_initialized ;

void SYS_Init()
{
 u32 level;

 _CPU_ISR_Disable(level);

 __SYS_PreInit();

 if(system_initialized) return;
 system_initialized = 1;

 _V_EXPORTNAME();

 __init_syscall_array();
 __lowmem_init();



 __lwp_wkspace_init(KERNEL_HEAP);
 __lwp_queue_init_empty(&sys_reset_func_queue);
 __lwp_objmgr_initinfo(&sys_alarm_objects,LWP_MAX_WATCHDOGS,sizeof(alarm_st));
 __sys_state_init();
 __lwp_priority_init();
 __lwp_watchdog_init();
 __exception_init();
 __systemcall_init();
 __decrementer_init();
 __irq_init();
 __exi_init();
 __sram_init();
 __si_init();
 __lwp_thread_coreinit();
 __lwp_sysinit();
 __memlock_init();
 __lwp_mqbox_init();
 __lwp_sema_init();
 __lwp_mutex_init();
 __lwp_cond_init();
 __timesystem_init();
 __dsp_bootstrap();

 if(!__sys_inIPL)
  __memprotect_init();




 DisableWriteGatherPipe();
 __SYS_InitCallbacks();






 __libc_init(1);
 __lwp_thread_startmultitasking();
 _CPU_ISR_Restore(level);
}

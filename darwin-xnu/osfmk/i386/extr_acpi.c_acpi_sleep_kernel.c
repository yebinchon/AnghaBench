
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_6__ {scalar_t__ cpu_hibernate; } ;
typedef TYPE_1__ cpu_data_t ;
typedef scalar_t__ boolean_t ;
typedef int acpi_sleep_callback ;
typedef void acpi_hibernate_callback_data_t ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int DBG_HIBERNATE ;
 scalar_t__ FALSE ;
 int IOCPURunPlatformActiveActions () ;
 int IOKDBG_CODE (int ,int) ;
 int KDBG (int,...) ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ TRUE ;
 int acpi_hibernate ;
 scalar_t__ acpi_sleep_abstime ;
 int acpi_sleep_cpu (int ,void*) ;
 scalar_t__ acpi_wake_abstime ;
 scalar_t__ acpi_wake_postrebase_abstime ;
 int assert (int) ;
 int clear_ts () ;
 unsigned int cpu_number () ;
 int cpu_syscall_init (TYPE_1__*) ;
 TYPE_1__* current_cpu_datap () ;
 scalar_t__ disable_serial_output ;
 int hibernate_machine_init () ;
 int hibernate_rebuild_vm_structs () ;
 int hv_suspend () ;
 int init_fpu () ;
 int install_real_mode_bootstrap (int ) ;
 int kasan_unpoison_curstack (int) ;
 scalar_t__ kdebug_enable ;
 int kdebug_trace_start (scalar_t__,int *,int,scalar_t__) ;
 int kprintf (char*,scalar_t__,...) ;
 int lapic_configure () ;
 scalar_t__ lapic_probe () ;
 int lapic_shutdown () ;
 scalar_t__ mach_absolute_time () ;
 int mca_cpu_init () ;
 int mt_cpu_down (TYPE_1__*) ;
 int mtrr_update_cpu () ;
 int pal_serial_init () ;
 int panic (char*,scalar_t__,unsigned int) ;
 int pat_init () ;
 scalar_t__ pmCPUExitHaltToOff (unsigned int) ;
 int pmCPUMarkRunning (TYPE_1__*) ;
 int pmMarkAllCPUsOff () ;
 int pmTimerRestore () ;
 int pmTimerSave () ;
 unsigned int real_ncpus ;
 int rtc_decrementer_configure () ;
 int rtc_nanotime_init (scalar_t__) ;
 int rtc_timer_start () ;
 scalar_t__ save_kdebug_enable ;
 int slave_pstart ;
 scalar_t__ trace_wrap ;
 int ucode_update_wake () ;
 int vmx_resume (scalar_t__) ;
 int vmx_suspend () ;
 scalar_t__ wake_nkdbufs ;
 int x86_64_post_sleep (scalar_t__) ;
 scalar_t__ x86_64_pre_sleep () ;

void
acpi_sleep_kernel(acpi_sleep_callback func, void *refcon)
{



 boolean_t did_hibernate;
 cpu_data_t *cdp = current_cpu_datap();
 unsigned int cpu;
 kern_return_t rc;
 unsigned int my_cpu;
 uint64_t start;
 uint64_t elapsed = 0;
 uint64_t elapsed_trace_start = 0;

 my_cpu = cpu_number();
 kprintf("acpi_sleep_kernel hib=%d, cpu=%d\n", cdp->cpu_hibernate,
   my_cpu);


 for (cpu = 0; cpu < real_ncpus; cpu += 1) {
  if (cpu == my_cpu)
   continue;
  rc = pmCPUExitHaltToOff(cpu);
  if (rc != KERN_SUCCESS)
   panic("Error %d trying to transition CPU %d to OFF",
         rc, cpu);
 }


 lapic_shutdown();
 pmTimerSave();
 clear_ts();

 KDBG(IOKDBG_CODE(DBG_HIBERNATE, 0) | DBG_FUNC_START);

 save_kdebug_enable = kdebug_enable;
 kdebug_enable = 0;

 acpi_sleep_abstime = mach_absolute_time();
 if (FALSE == disable_serial_output)
  pal_serial_init();







 {
  did_hibernate = FALSE;
 }


 cpu_syscall_init(current_cpu_datap());
 ucode_update_wake();
 pmMarkAllCPUsOff();



 if (lapic_probe())
  lapic_configure();
 elapsed += mach_absolute_time() - start;

 rtc_decrementer_configure();
 kdebug_enable = save_kdebug_enable;

 if (kdebug_enable == 0) {
  if (wake_nkdbufs) {
   start = mach_absolute_time();
   kdebug_trace_start(wake_nkdbufs, ((void*)0), trace_wrap != 0, TRUE);
   elapsed_trace_start += mach_absolute_time() - start;
  }
 }
 start = mach_absolute_time();


 init_fpu();
 clear_ts();

 IOCPURunPlatformActiveActions();
 KDBG(IOKDBG_CODE(DBG_HIBERNATE, 0) | DBG_FUNC_END, start, elapsed,
   elapsed_trace_start, acpi_wake_abstime);


 pmCPUMarkRunning(current_cpu_datap());


 pmTimerRestore();


 rtc_timer_start();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int proc_t ;


 int EBUSY ;
 int HOST_REBOOT_HALT ;
 int HOST_REBOOT_UPSDELAY ;
 int IOSystemShutdownNotification (int ) ;
 int OSCompareAndSwap (int ,int,int *) ;
 int RB_HALT ;
 int RB_NOSYNC ;
 int RB_PANIC ;
 int RB_POWERDOWN ;
 int RB_QUICK ;
 int RB_UPSDELAY ;
 int audit_shutdown () ;
 int count_busy_buffers () ;
 int delay_for_interval (int,int) ;
 int halt_log_enter (char*,int ,scalar_t__) ;
 int host_priv_self () ;
 int host_reboot (int ,int) ;
 int if_down_all () ;
 int kIOSystemShutdownNotificationStageProcessExit ;
 int kIOSystemShutdownNotificationStageRootUnmount ;
 int kdbg_dump_trace_to_file (char*) ;
 scalar_t__ kdebug_enable ;
 int kdp_has_polled_corefile () ;
 scalar_t__ mach_absolute_time () ;
 int panic_kernel (int,char*) ;
 int printf (char*,...) ;
 int proc_shutdown () ;
 int sync (int ,void*,int*) ;
 int system_inshutdown ;
 int unmountroot_pre_hook () ;
 int vfs_unmountall () ;

int
reboot_kernel(int howto, char *message)
{
 int hostboot_option=0;
 uint64_t startTime;

 if ((howto & (RB_PANIC | RB_QUICK)) == (RB_PANIC | RB_QUICK)) {
  panic_kernel(howto, message);
 }

 if (!OSCompareAndSwap(0, 1, &system_inshutdown)) {
  if ( (howto&RB_QUICK) == RB_QUICK)
   goto force_reboot;
  return (EBUSY);
 }



 IOSystemShutdownNotification(kIOSystemShutdownNotificationStageProcessExit);

 if ((howto&RB_QUICK)==RB_QUICK) {
  printf("Quick reboot...\n");
  if ((howto&RB_NOSYNC)==0) {
   sync((proc_t)((void*)0), (void *)((void*)0), (int *)((void*)0));
  }
 }
 else if ((howto&RB_NOSYNC)==0) {
  int iter, nbusy;

  printf("syncing disks... ");







  startTime = mach_absolute_time();
  proc_shutdown();
  halt_log_enter("proc_shutdown", 0, mach_absolute_time() - startTime);







  if (unmountroot_pre_hook != ((void*)0))
   unmountroot_pre_hook();

  startTime = mach_absolute_time();
  sync((proc_t)((void*)0), (void *)((void*)0), (int *)((void*)0));

  if (kdebug_enable) {
   startTime = mach_absolute_time();
   kdbg_dump_trace_to_file("/var/log/shutdown/shutdown.trace");
   halt_log_enter("shutdown.trace", 0, mach_absolute_time() - startTime);
  }

  IOSystemShutdownNotification(kIOSystemShutdownNotificationStageRootUnmount);
  {
   startTime = mach_absolute_time();
   vfs_unmountall();
   halt_log_enter("vfs_unmountall", 0, mach_absolute_time() - startTime);
  }


  startTime = mach_absolute_time();
  for (iter = 0; iter < 100; iter++) {
   nbusy = count_busy_buffers();
   if (nbusy == 0)
    break;
   printf("%d ", nbusy);
   delay_for_interval( 1 * nbusy, 1000 * 1000);
  }
  if (nbusy)
   printf("giving up\n");
  else
   printf("done\n");
  halt_log_enter("bufferclean", 0, mach_absolute_time() - startTime);
 }
force_reboot:

 if (howto & RB_PANIC) {
  panic_kernel(howto, message);
 }

 if (howto & RB_POWERDOWN)
  hostboot_option = HOST_REBOOT_HALT;
 if (howto & RB_HALT)
  hostboot_option = HOST_REBOOT_HALT;

 if (howto & RB_UPSDELAY) {
  hostboot_option = HOST_REBOOT_UPSDELAY;
 }

 host_reboot(host_priv_self(), hostboot_option);



 return (0);
}

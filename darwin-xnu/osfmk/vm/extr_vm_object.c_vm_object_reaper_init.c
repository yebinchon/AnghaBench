
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int thread_continue_t ;
typedef scalar_t__ kern_return_t ;


 int BASEPRI_VM ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ kernel_thread_start_priority (int ,int *,int ,int *) ;
 int panic (char*,scalar_t__) ;
 int thread_deallocate (int ) ;
 scalar_t__ vm_object_reaper_thread ;

void
vm_object_reaper_init(void)
{
 kern_return_t kr;
 thread_t thread;

 kr = kernel_thread_start_priority(
  (thread_continue_t) vm_object_reaper_thread,
  ((void*)0),
  BASEPRI_VM,
  &thread);
 if (kr != KERN_SUCCESS) {
  panic("failed to launch vm_object_reaper_thread kr=0x%x", kr);
 }
 thread_deallocate(thread);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thread_t ;
struct semaphore_signal_thread_trap_args {scalar_t__ signal_name; scalar_t__ thread_name; } ;
typedef int semaphore_t ;
typedef scalar_t__ mach_port_name_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ MACH_PORT_NULL ;
 int SEMAPHORE_OPTION_NONE ;
 scalar_t__ THREAD_NULL ;
 scalar_t__ port_name_to_semaphore (scalar_t__,int *) ;
 scalar_t__ port_name_to_thread (scalar_t__) ;
 int semaphore_dereference (int ) ;
 scalar_t__ semaphore_signal_internal (int ,scalar_t__,int ) ;
 int thread_deallocate (scalar_t__) ;

kern_return_t
semaphore_signal_thread_trap(
 struct semaphore_signal_thread_trap_args *args)
{
 mach_port_name_t sema_name = args->signal_name;
 mach_port_name_t thread_name = args->thread_name;
 semaphore_t semaphore;
 thread_t thread;
 kern_return_t kr;






 if (thread_name != MACH_PORT_NULL) {
  thread = port_name_to_thread(thread_name);
  if (thread == THREAD_NULL)
   return KERN_INVALID_ARGUMENT;
 } else
  thread = THREAD_NULL;

 kr = port_name_to_semaphore(sema_name, &semaphore);
 if (kr == KERN_SUCCESS) {
  kr = semaphore_signal_internal(semaphore,
    thread,
    SEMAPHORE_OPTION_NONE);
  semaphore_dereference(semaphore);
 }
 if (thread != THREAD_NULL) {
  thread_deallocate(thread);
 }
 return kr;
}

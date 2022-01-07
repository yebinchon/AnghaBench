
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int semaphore_t ;
typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_NOT_WAITING ;
 scalar_t__ KERN_SUCCESS ;
 int SEMAPHORE_SIGNAL_PREPOST ;
 int THREAD_NULL ;
 scalar_t__ port_name_to_semaphore (int ,int *) ;
 int semaphore_dereference (int ) ;
 scalar_t__ semaphore_signal_internal (int ,int ,int ) ;

kern_return_t
semaphore_signal_internal_trap(mach_port_name_t sema_name)
{
 semaphore_t semaphore;
 kern_return_t kr;

 kr = port_name_to_semaphore(sema_name, &semaphore);
 if (kr == KERN_SUCCESS) {
  kr = semaphore_signal_internal(semaphore,
    THREAD_NULL,
    SEMAPHORE_SIGNAL_PREPOST);
  semaphore_dereference(semaphore);
  if (kr == KERN_NOT_WAITING)
   kr = KERN_SUCCESS;
 }
 return kr;
}

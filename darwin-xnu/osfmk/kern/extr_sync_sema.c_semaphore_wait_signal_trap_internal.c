
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int semaphore_t ;
typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int SEMAPHORE_OPTION_NONE ;
 scalar_t__ port_name_to_semaphore (int ,int *) ;
 int semaphore_dereference (int ) ;
 scalar_t__ semaphore_wait_internal (int ,int ,unsigned long long,int ,void (*) (scalar_t__)) ;

kern_return_t
semaphore_wait_signal_trap_internal(
 mach_port_name_t wait_name,
 mach_port_name_t signal_name,
 void (*caller_cont)(kern_return_t))
{
 semaphore_t wait_semaphore;
 semaphore_t signal_semaphore;
 kern_return_t kr;

 kr = port_name_to_semaphore(signal_name, &signal_semaphore);
 if (kr == KERN_SUCCESS) {
  kr = port_name_to_semaphore(wait_name, &wait_semaphore);
  if (kr == KERN_SUCCESS) {
   kr = semaphore_wait_internal(wait_semaphore,
     signal_semaphore,
     0ULL, SEMAPHORE_OPTION_NONE,
     caller_cont);
   semaphore_dereference(wait_semaphore);
  }
  semaphore_dereference(signal_semaphore);
 }
 return kr;
}

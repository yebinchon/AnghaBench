
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int semaphore_t ;
struct TYPE_3__ {unsigned int tv_sec; scalar_t__ tv_nsec; } ;
typedef TYPE_1__ mach_timespec_t ;
typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ clock_res_t ;


 scalar_t__ BAD_MACH_TIMESPEC (TYPE_1__*) ;
 scalar_t__ KERN_INVALID_VALUE ;
 scalar_t__ KERN_SUCCESS ;
 int SEMAPHORE_OPTION_NONE ;
 int SEMAPHORE_TIMEOUT_NOBLOCK ;
 scalar_t__ port_name_to_semaphore (int ,int *) ;
 int semaphore_deadline (unsigned int,scalar_t__) ;
 int semaphore_dereference (int ) ;
 scalar_t__ semaphore_wait_internal (int ,int ,int ,int,void (*) (scalar_t__)) ;

kern_return_t
semaphore_timedwait_signal_trap_internal(
 mach_port_name_t wait_name,
 mach_port_name_t signal_name,
 unsigned int sec,
 clock_res_t nsec,
 void (*caller_cont)(kern_return_t))
{
 semaphore_t wait_semaphore;
 semaphore_t signal_semaphore;
 mach_timespec_t wait_time;
 kern_return_t kr;

 wait_time.tv_sec = sec;
 wait_time.tv_nsec = nsec;
 if(BAD_MACH_TIMESPEC(&wait_time))
  return KERN_INVALID_VALUE;

 kr = port_name_to_semaphore(signal_name, &signal_semaphore);
 if (kr == KERN_SUCCESS) {
  kr = port_name_to_semaphore(wait_name, &wait_semaphore);
  if (kr == KERN_SUCCESS) {
   int option = SEMAPHORE_OPTION_NONE;
   uint64_t deadline = 0;

   if (sec == 0 && nsec == 0)
    option = SEMAPHORE_TIMEOUT_NOBLOCK;
   else
    deadline = semaphore_deadline(sec, nsec);

   kr = semaphore_wait_internal(wait_semaphore,
     signal_semaphore,
     deadline, option,
     caller_cont);
   semaphore_dereference(wait_semaphore);
  }
  semaphore_dereference(signal_semaphore);
 }
 return kr;
}

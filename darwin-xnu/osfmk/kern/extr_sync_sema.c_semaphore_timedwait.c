
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ semaphore_t ;
struct TYPE_4__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
typedef TYPE_1__ mach_timespec_t ;
typedef int kern_return_t ;


 scalar_t__ BAD_MACH_TIMESPEC (TYPE_1__*) ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_INVALID_VALUE ;
 scalar_t__ SEMAPHORE_NULL ;
 int SEMAPHORE_OPTION_NONE ;
 int SEMAPHORE_TIMEOUT_NOBLOCK ;
 int semaphore_deadline (scalar_t__,scalar_t__) ;
 int semaphore_wait_internal (scalar_t__,scalar_t__,int ,int,void (*) (int )) ;

kern_return_t
semaphore_timedwait(
 semaphore_t semaphore,
 mach_timespec_t wait_time)
{
 int option = SEMAPHORE_OPTION_NONE;
 uint64_t deadline = 0;

 if (semaphore == SEMAPHORE_NULL)
  return KERN_INVALID_ARGUMENT;

 if(BAD_MACH_TIMESPEC(&wait_time))
  return KERN_INVALID_VALUE;

 if (wait_time.tv_sec == 0 && wait_time.tv_nsec == 0)
  option = SEMAPHORE_TIMEOUT_NOBLOCK;
 else
  deadline = semaphore_deadline(wait_time.tv_sec, wait_time.tv_nsec);

 return (semaphore_wait_internal(semaphore,
     SEMAPHORE_NULL,
     deadline, option,
     (void(*)(kern_return_t))0));

}

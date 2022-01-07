
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef scalar_t__ semaphore_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 scalar_t__ SEMAPHORE_NULL ;
 int SEMAPHORE_OPTION_NONE ;
 int semaphore_signal_internal (scalar_t__,int ,int ) ;

kern_return_t
semaphore_signal_thread(
 semaphore_t semaphore,
 thread_t thread)
{
 kern_return_t ret;

 if (semaphore == SEMAPHORE_NULL)
  return KERN_INVALID_ARGUMENT;

 ret = semaphore_signal_internal(semaphore,
     thread,
     SEMAPHORE_OPTION_NONE);
 return ret;
}

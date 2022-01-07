
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ semaphore_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 scalar_t__ SEMAPHORE_NULL ;
 int SEMAPHORE_OPTION_NONE ;
 int semaphore_wait_internal (scalar_t__,scalar_t__,int ,int ,void (*) (int )) ;

kern_return_t
semaphore_wait_deadline(
 semaphore_t semaphore,
 uint64_t deadline)
{

 if (semaphore == SEMAPHORE_NULL)
  return KERN_INVALID_ARGUMENT;

 return(semaphore_wait_internal(semaphore,
        SEMAPHORE_NULL,
        deadline, SEMAPHORE_OPTION_NONE,
           (void (*)(kern_return_t))0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ semaphore_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 scalar_t__ SEMAPHORE_NULL ;
 int SEMAPHORE_TIMEOUT_NOBLOCK ;
 int semaphore_wait_internal (scalar_t__,scalar_t__,unsigned long long,int ,void (*) (int )) ;

kern_return_t
semaphore_wait_noblock(
 semaphore_t semaphore)
{

 if (semaphore == SEMAPHORE_NULL)
  return KERN_INVALID_ARGUMENT;

 return(semaphore_wait_internal(semaphore,
        SEMAPHORE_NULL,
        0ULL, SEMAPHORE_TIMEOUT_NOBLOCK,
           (void (*)(kern_return_t))0));
}

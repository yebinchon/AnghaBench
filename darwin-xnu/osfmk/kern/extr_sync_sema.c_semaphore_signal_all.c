
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ semaphore_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_NOT_WAITING ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ SEMAPHORE_NULL ;
 int SEMAPHORE_SIGNAL_ALL ;
 int THREAD_NULL ;
 scalar_t__ semaphore_signal_internal (scalar_t__,int ,int ) ;

kern_return_t
semaphore_signal_all(
 semaphore_t semaphore)
{
 kern_return_t kr;

 if (semaphore == SEMAPHORE_NULL)
  return KERN_INVALID_ARGUMENT;

 kr = semaphore_signal_internal(semaphore,
           THREAD_NULL,
           SEMAPHORE_SIGNAL_ALL);
 if (kr == KERN_NOT_WAITING)
  return KERN_SUCCESS;
 return kr;
}

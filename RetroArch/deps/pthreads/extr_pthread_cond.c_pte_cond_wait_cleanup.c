
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_cond_t ;
struct TYPE_4__ {int* resultPtr; int * mutexPtr; TYPE_1__* cv; } ;
typedef TYPE_2__ pte_cond_wait_cleanup_args_t ;
struct TYPE_3__ {int nWaitersToUnblock; int nWaitersGone; int nWaitersBlocked; int semBlockLock; int mtxUnblockLock; } ;


 int INT_MAX ;
 int errno ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ sem_post (int *) ;
 scalar_t__ sem_wait (int *) ;

__attribute__((used)) static void pte_cond_wait_cleanup (void *args)
{
   pte_cond_wait_cleanup_args_t *cleanup_args =
      (pte_cond_wait_cleanup_args_t *) args;
   pthread_cond_t cv = cleanup_args->cv;
   int *resultPtr = cleanup_args->resultPtr;
   int nSignalsWasLeft;
   int result;







   if ((result = pthread_mutex_lock (&(cv->mtxUnblockLock))) != 0)
   {
      *resultPtr = result;
      return;
   }

   if (0 != (nSignalsWasLeft = cv->nWaitersToUnblock))
   {
      --(cv->nWaitersToUnblock);
   }
   else if (INT_MAX / 2 == ++(cv->nWaitersGone))
   {


      if (sem_wait (&(cv->semBlockLock)) != 0)
      {
         *resultPtr = errno;





         return;
      }
      cv->nWaitersBlocked -= cv->nWaitersGone;
      if (sem_post (&(cv->semBlockLock)) != 0)
      {
         *resultPtr = errno;





         return;
      }
      cv->nWaitersGone = 0;
   }

   if ((result = pthread_mutex_unlock (&(cv->mtxUnblockLock))) != 0)
   {
      *resultPtr = result;
      return;
   }

   if (1 == nSignalsWasLeft)
   {
      if (sem_post (&(cv->semBlockLock)) != 0)
      {
         *resultPtr = errno;
         return;
      }
   }





   if ((result = pthread_mutex_lock (cleanup_args->mutexPtr)) != 0)
      *resultPtr = result;
}

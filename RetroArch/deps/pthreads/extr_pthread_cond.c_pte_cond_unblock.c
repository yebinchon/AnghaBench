
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pthread_cond_t ;
struct TYPE_4__ {int nWaitersToUnblock; int nWaitersBlocked; int nWaitersGone; int semBlockQueue; int mtxUnblockLock; int semBlockLock; } ;


 int EINVAL ;
 TYPE_1__* PTHREAD_COND_INITIALIZER ;
 int errno ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ sem_post_multiple (int *,int) ;
 scalar_t__ sem_wait (int *) ;

__attribute__((used)) static int pte_cond_unblock (pthread_cond_t * cond, int unblockAll)
{
   int result;
   pthread_cond_t cv;
   int nSignalsToIssue;

   if (cond == ((void*)0) || *cond == ((void*)0))
      return EINVAL;

   cv = *cond;





   if (cv == PTHREAD_COND_INITIALIZER)
      return 0;

   if ((result = pthread_mutex_lock (&(cv->mtxUnblockLock))) != 0)
      return result;

   if (0 != cv->nWaitersToUnblock)
   {
      if (0 == cv->nWaitersBlocked)
         return pthread_mutex_unlock (&(cv->mtxUnblockLock));

      if (unblockAll)
      {
         cv->nWaitersToUnblock += (nSignalsToIssue = cv->nWaitersBlocked);
         cv->nWaitersBlocked = 0;
      }
      else
      {
         nSignalsToIssue = 1;
         cv->nWaitersToUnblock++;
         cv->nWaitersBlocked--;
      }
   }
   else if (cv->nWaitersBlocked > cv->nWaitersGone)
   {


      if (sem_wait (&(cv->semBlockLock)) != 0)
      {
         result = errno;
         (void) pthread_mutex_unlock (&(cv->mtxUnblockLock));
         return result;
      }
      if (0 != cv->nWaitersGone)
      {
         cv->nWaitersBlocked -= cv->nWaitersGone;
         cv->nWaitersGone = 0;
      }
      if (unblockAll)
      {
         nSignalsToIssue = cv->nWaitersToUnblock = cv->nWaitersBlocked;
         cv->nWaitersBlocked = 0;
      }
      else
      {
         nSignalsToIssue = cv->nWaitersToUnblock = 1;
         cv->nWaitersBlocked--;
      }
   }
   else
      return pthread_mutex_unlock (&(cv->mtxUnblockLock));

   if ((result = pthread_mutex_unlock (&(cv->mtxUnblockLock))) == 0)
   {
      if (sem_post_multiple (&(cv->semBlockQueue), nSignalsToIssue) != 0)
         result = errno;
   }

   return result;
}

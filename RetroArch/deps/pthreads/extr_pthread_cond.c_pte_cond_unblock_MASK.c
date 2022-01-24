#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pthread_cond_t ;
struct TYPE_4__ {int nWaitersToUnblock; int nWaitersBlocked; int nWaitersGone; int /*<<< orphan*/  semBlockQueue; int /*<<< orphan*/  mtxUnblockLock; int /*<<< orphan*/  semBlockLock; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__* PTHREAD_COND_INITIALIZER ; 
 int errno ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4 (pthread_cond_t * cond, int unblockAll)
   /*
    * Notes.
    *
    * Does not use the external mutex for synchronisation,
    * therefore semBlockLock is needed.
    * mtxUnblockLock is for LEVEL-2 synch. LEVEL-2 is the
    * state where the external mutex is not necessarily locked by
    * any thread, ie. between cond_wait unlocking and re-acquiring
    * the lock after having been signaled or a timeout or
    * cancellation.
    *
    * Uses the following CV elements:
    *   nWaitersBlocked
    *   nWaitersToUnblock
    *   nWaitersGone
    *   mtxUnblockLock
    *   semBlockLock
    *   semBlockQueue
    */
{
   int result;
   pthread_cond_t cv;
   int nSignalsToIssue;

   if (cond == NULL || *cond == NULL)
      return EINVAL;

   cv = *cond;

   /*
    * No-op if the CV is static and hasn't been initialised yet.
    * Assuming that any race condition is harmless.
    */
   if (cv == PTHREAD_COND_INITIALIZER)
      return 0;

   if ((result = FUNC0 (&(cv->mtxUnblockLock))) != 0)
      return result;

   if (0 != cv->nWaitersToUnblock)
   {
      if (0 == cv->nWaitersBlocked)
         return FUNC1 (&(cv->mtxUnblockLock));

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
      /* Use the non-cancellable version of sem_wait() */
      //      if (sem_wait_nocancel (&(cv->semBlockLock)) != 0)
      if (FUNC3 (&(cv->semBlockLock)) != 0)
      {
         result = errno;
         (void) FUNC1 (&(cv->mtxUnblockLock));
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
      return FUNC1 (&(cv->mtxUnblockLock));

   if ((result = FUNC1 (&(cv->mtxUnblockLock))) == 0)
   {
      if (FUNC2 (&(cv->semBlockQueue), nSignalsToIssue) != 0)
         result = errno;
   }

   return result;
}
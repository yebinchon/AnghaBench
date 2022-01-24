#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pthread_rwlock_t ;
struct TYPE_5__ {scalar_t__ nMagic; scalar_t__ nExclusiveAccessCount; scalar_t__ nSharedAccessCount; scalar_t__ nCompletedSharedAccessCount; int /*<<< orphan*/  mtxExclusiveAccess; int /*<<< orphan*/  mtxSharedAccessCompleted; int /*<<< orphan*/  cndSharedAccessCompleted; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ PTE_RWLOCK_MAGIC ; 
 TYPE_1__* PTHREAD_RWLOCK_INITIALIZER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pte_rwlock_test_init_lock ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7 (pthread_rwlock_t * rwlock)
{
   pthread_rwlock_t rwl;
   int result = 0, result1 = 0, result2 = 0;

   if (rwlock == NULL || *rwlock == NULL)
      return EINVAL;

   if (*rwlock != PTHREAD_RWLOCK_INITIALIZER)
   {
      rwl = *rwlock;

      if (rwl->nMagic != PTE_RWLOCK_MAGIC)
         return EINVAL;

      if ((result = FUNC5 (&(rwl->mtxExclusiveAccess))) != 0)
         return result;

      if ((result =
               FUNC5 (&(rwl->mtxSharedAccessCompleted))) != 0)
      {
         (void) FUNC6 (&(rwl->mtxExclusiveAccess));
         return result;
      }

      /*
       * Check whether any threads own/wait for the lock (wait for ex.access);
       * report "BUSY" if so.
       */
      if (rwl->nExclusiveAccessCount > 0
            || rwl->nSharedAccessCount > rwl->nCompletedSharedAccessCount)
      {
         result = FUNC6 (&(rwl->mtxSharedAccessCompleted));
         result1 = FUNC6 (&(rwl->mtxExclusiveAccess));
         result2 = EBUSY;
      }
      else
      {
         rwl->nMagic = 0;

         if ((result =
                  FUNC6 (&(rwl->mtxSharedAccessCompleted))) != 0)
         {
            FUNC6 (&rwl->mtxExclusiveAccess);
            return result;
         }

         if ((result =
                  FUNC6 (&(rwl->mtxExclusiveAccess))) != 0)
            return result;

         *rwlock = NULL;	/* Invalidate rwlock before anything else */
         result = FUNC3 (&(rwl->cndSharedAccessCompleted));
         result1 = FUNC4 (&(rwl->mtxSharedAccessCompleted));
         result2 = FUNC4 (&(rwl->mtxExclusiveAccess));
         (void) FUNC0 (rwl);
      }
   }
   else
   {
      /*
       * See notes in pte_rwlock_check_need_init() above also.
       */

      FUNC1 (pte_rwlock_test_init_lock);

      /*
       * Check again.
       */
      if (*rwlock == PTHREAD_RWLOCK_INITIALIZER)
      {
         /*
          * This is all we need to do to destroy a statically
          * initialised rwlock that has not yet been used (initialised).
          * If we get to here, another thread
          * waiting to initialise this rwlock will get an EINVAL.
          */
         *rwlock = NULL;
      }
      /*
       * The rwlock has been initialised while we were waiting
       * so assume it's in use.
       */
      else
         result = EBUSY;

      FUNC2(pte_rwlock_test_init_lock);

   }

   return ((result != 0) ? result : ((result1 != 0) ? result1 : result2));
}
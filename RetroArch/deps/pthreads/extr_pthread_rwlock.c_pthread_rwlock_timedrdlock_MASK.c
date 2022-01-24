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
struct timespec {int dummy; } ;
typedef  TYPE_1__* pthread_rwlock_t ;
struct TYPE_5__ {scalar_t__ nMagic; scalar_t__ nSharedAccessCount; scalar_t__ nCompletedSharedAccessCount; int /*<<< orphan*/  mtxExclusiveAccess; int /*<<< orphan*/  mtxSharedAccessCompleted; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 scalar_t__ INT_MAX ; 
 scalar_t__ PTE_RWLOCK_MAGIC ; 
 TYPE_1__* PTHREAD_RWLOCK_INITIALIZER ; 
 int FUNC0 (TYPE_1__**) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct timespec const*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3 (pthread_rwlock_t * rwlock,
                            const struct timespec *abstime)
{
   int result;
   pthread_rwlock_t rwl;

   if (rwlock == NULL || *rwlock == NULL)
      return EINVAL;

   /*
    * We do a quick check to see if we need to do more work
    * to initialise a static rwlock. We check
    * again inside the guarded section of pte_rwlock_check_need_init()
    * to avoid race conditions.
    */
   if (*rwlock == PTHREAD_RWLOCK_INITIALIZER)
   {
      result = FUNC0 (rwlock);

      if (result != 0 && result != EBUSY)
      {
         return result;
      }
   }

   rwl = *rwlock;

   if (rwl->nMagic != PTE_RWLOCK_MAGIC)
   {
      return EINVAL;
   }

   if ((result =
            FUNC1 (&(rwl->mtxExclusiveAccess), abstime)) != 0)
   {
      return result;
   }

   if (++rwl->nSharedAccessCount == INT_MAX)
   {
      if ((result =
               FUNC1 (&(rwl->mtxSharedAccessCompleted),
                  abstime)) != 0)
      {
         if (result == ETIMEDOUT)
         {
            ++rwl->nCompletedSharedAccessCount;
         }
         (void) FUNC2 (&(rwl->mtxExclusiveAccess));
         return result;
      }

      rwl->nSharedAccessCount -= rwl->nCompletedSharedAccessCount;
      rwl->nCompletedSharedAccessCount = 0;

      if ((result =
               FUNC2 (&(rwl->mtxSharedAccessCompleted))) != 0)
      {
         (void) FUNC2 (&(rwl->mtxExclusiveAccess));
         return result;
      }
   }

   return (FUNC2 (&(rwl->mtxExclusiveAccess)));
}
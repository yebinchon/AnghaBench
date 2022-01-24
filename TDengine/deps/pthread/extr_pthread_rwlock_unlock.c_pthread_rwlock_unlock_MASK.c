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
typedef  TYPE_1__* pthread_rwlock_t ;
struct TYPE_4__ {scalar_t__ nMagic; scalar_t__ nExclusiveAccessCount; scalar_t__ nCompletedSharedAccessCount; int /*<<< orphan*/  mtxExclusiveAccess; int /*<<< orphan*/  mtxSharedAccessCompleted; int /*<<< orphan*/  cndSharedAccessCompleted; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__* PTHREAD_RWLOCK_INITIALIZER ; 
 scalar_t__ PTW32_RWLOCK_MAGIC ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3 (pthread_rwlock_t * rwlock)
{
  int result, result1;
  pthread_rwlock_t rwl;

  if (rwlock == NULL || *rwlock == NULL)
    {
      return (EINVAL);
    }

  if (*rwlock == PTHREAD_RWLOCK_INITIALIZER)
    {
      /*
       * Assume any race condition here is harmless.
       */
      return 0;
    }

  rwl = *rwlock;

  if (rwl->nMagic != PTW32_RWLOCK_MAGIC)
    {
      return EINVAL;
    }

  if (rwl->nExclusiveAccessCount == 0)
    {
      if ((result =
	   FUNC1 (&(rwl->mtxSharedAccessCompleted))) != 0)
	{
	  return result;
	}

      if (++rwl->nCompletedSharedAccessCount == 0)
	{
	  result = FUNC0 (&(rwl->cndSharedAccessCompleted));
	}

      result1 = FUNC2 (&(rwl->mtxSharedAccessCompleted));
    }
  else
    {
      rwl->nExclusiveAccessCount--;

      result = FUNC2 (&(rwl->mtxSharedAccessCompleted));
      result1 = FUNC2 (&(rwl->mtxExclusiveAccess));

    }

  return ((result != 0) ? result : result1);
}
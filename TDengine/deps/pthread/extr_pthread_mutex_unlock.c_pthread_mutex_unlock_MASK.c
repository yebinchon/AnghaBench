#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
typedef  TYPE_2__* pthread_mutex_t ;
struct TYPE_10__ {int /*<<< orphan*/ * p; } ;
struct TYPE_9__ {int kind; scalar_t__ recursive_count; int /*<<< orphan*/  event; int /*<<< orphan*/  lock_idx; TYPE_1__* robustNode; TYPE_5__ ownerThread; } ;
struct TYPE_8__ {int /*<<< orphan*/  stateInconsistent; } ;
typedef  int /*<<< orphan*/  PTW32_INTERLOCKED_LONGPTR ;
typedef  int /*<<< orphan*/  PTW32_INTERLOCKED_LONG ;
typedef  scalar_t__ LONG ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 TYPE_2__* PTHREAD_ERRORCHECK_MUTEX_INITIALIZER ; 
 TYPE_2__* PTHREAD_MUTEX_INITIALIZER ; 
 int PTHREAD_MUTEX_NORMAL ; 
 int PTHREAD_MUTEX_RECURSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ PTW32_ROBUST_INCONSISTENT ; 
 scalar_t__ PTW32_ROBUST_NOTRECOVERABLE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_5__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,int /*<<< orphan*/ *) ; 

int
FUNC6 (pthread_mutex_t * mutex)
{
  int result = 0;
  int kind;
  pthread_mutex_t mx;

  /*
   * Let the system deal with invalid pointers.
   */

  mx = *mutex;

  /*
   * If the thread calling us holds the mutex then there is no
   * race condition. If another thread holds the
   * lock then we shouldn't be in here.
   */
  if (mx < PTHREAD_ERRORCHECK_MUTEX_INITIALIZER)
    {
      kind = mx->kind;

      if (kind >= 0)
        {
          if (kind == PTHREAD_MUTEX_NORMAL)
	    {
	      LONG idx;

	      idx = (LONG) FUNC1 ((PTW32_INTERLOCKED_LONGPTR)&mx->lock_idx,
							    (PTW32_INTERLOCKED_LONG)0);
	      if (idx != 0)
	        {
	          if (idx < 0)
		    {
		      /*
		       * Someone may be waiting on that mutex.
		       */
		      if (FUNC2 (mx->event) == 0)
		        {
		          result = EINVAL;
		        }
		    }
	        }
	    }
          else
	    {
	      if (FUNC3 (mx->ownerThread, FUNC4()))
	        {
	          if (kind != PTHREAD_MUTEX_RECURSIVE
		      || 0 == --mx->recursive_count)
		    {
		      mx->ownerThread.p = NULL;

		      if ((LONG) FUNC1 ((PTW32_INTERLOCKED_LONGPTR)&mx->lock_idx,
							          (PTW32_INTERLOCKED_LONG)0) < 0L)
		        {
		          /* Someone may be waiting on that mutex */
		          if (FUNC2 (mx->event) == 0)
			    {
			      result = EINVAL;
			    }
		        }
		    }
	        }
	      else
	        {
	          result = EPERM;
	        }
	    }
        }
      else
        {
          /* Robust types */
          pthread_t self = FUNC4();
          kind = -kind - 1; /* Convert to non-robust range */

          /*
           * The thread must own the lock regardless of type if the mutex
           * is robust.
           */
          if (FUNC3 (mx->ownerThread, self))
            {
              FUNC0((PTW32_INTERLOCKED_LONGPTR) &mx->robustNode->stateInconsistent,
                                                      (PTW32_INTERLOCKED_LONG)PTW32_ROBUST_NOTRECOVERABLE,
                                                      (PTW32_INTERLOCKED_LONG)PTW32_ROBUST_INCONSISTENT);
              if (PTHREAD_MUTEX_NORMAL == kind)
                {
                  FUNC5(mutex, NULL);

                  if ((LONG) FUNC1((PTW32_INTERLOCKED_LONGPTR) &mx->lock_idx,
                                                             (PTW32_INTERLOCKED_LONG) 0) < 0)
                    {
                      /*
                       * Someone may be waiting on that mutex.
                       */
                      if (FUNC2 (mx->event) == 0)
                        {
                          result = EINVAL;
                        }
                    }
                }
              else
                {
                  if (kind != PTHREAD_MUTEX_RECURSIVE
                      || 0 == --mx->recursive_count)
                    {
                      FUNC5(mutex, NULL);

                      if ((LONG) FUNC1((PTW32_INTERLOCKED_LONGPTR) &mx->lock_idx,
                                                                 (PTW32_INTERLOCKED_LONG) 0) < 0)
                        {
                          /*
                           * Someone may be waiting on that mutex.
                           */
                          if (FUNC2 (mx->event) == 0)
                            {
                              result = EINVAL;
                            }
                        }
                    }
                }
            }
          else
            {
              result = EPERM;
            }
        }
    }
  else if (mx != PTHREAD_MUTEX_INITIALIZER)
    {
      result = EINVAL;
    }

  return (result);
}
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
typedef  TYPE_1__* sem_t ;
struct TYPE_4__ {scalar_t__ value; int /*<<< orphan*/  lock; int /*<<< orphan*/  sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ SEM_VALUE_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6 (sem_t * sem)
     /*
      * ------------------------------------------------------
      * DOCPUBLIC
      *      This function destroys an unnamed semaphore.
      *
      * PARAMETERS
      *      sem
      *              pointer to an instance of sem_t
      *
      * DESCRIPTION
      *      This function destroys an unnamed semaphore.
      *
      * RESULTS
      *              0               successfully destroyed semaphore,
      *              -1              failed, error in errno
      * ERRNO
      *              EINVAL          'sem' is not a valid semaphore,
      *              ENOSYS          semaphores are not supported,
      *              EBUSY           threads (or processes) are currently
      *                                      blocked on 'sem'
      *
      * ------------------------------------------------------
      */
{
  int result = 0;
  sem_t s = NULL;

  if (sem == NULL || *sem == NULL)
    {
      result = EINVAL;
    }
  else
    {
      s = *sem;

      if ((result = FUNC4 (&s->lock)) == 0)
        {
          if (s->value < 0)
            {
              (void) FUNC5 (&s->lock);
              result = EBUSY;
            }
          else
            {
              /* There are no threads currently blocked on this semaphore. */

              if (!FUNC0 (s->sem))
	        {
                  (void) FUNC5 (&s->lock);
	          result = EINVAL;
	        }
	      else
	        {
                  /*
                   * Invalidate the semaphore handle when we have the lock.
                   * Other sema operations should test this after acquiring the lock
                   * to check that the sema is still valid, i.e. before performing any
                   * operations. This may only be necessary before the sema op routine
                   * returns so that the routine can return EINVAL - e.g. if setting
                   * s->value to SEM_VALUE_MAX below does force a fall-through.
                   */
                  *sem = NULL;

                  /* Prevent anyone else actually waiting on or posting this sema.
                   */
                  s->value = SEM_VALUE_MAX;

                  (void) FUNC5 (&s->lock);

                  do
                    {
                      /* Give other threads a chance to run and exit any sema op
                       * routines. Due to the SEM_VALUE_MAX value, if sem_post or
                       * sem_wait were blocked by us they should fall through.
                       */
                      FUNC1(0);
                    }
                  while (FUNC3 (&s->lock) == EBUSY);
                }
            }
        }
    }

  if (result != 0)
    {
      errno = result;
      return -1;
    }

  FUNC2 (s);

  return 0;

}
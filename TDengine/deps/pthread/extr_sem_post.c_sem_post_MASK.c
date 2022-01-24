#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sem_t ;
struct TYPE_3__ {scalar_t__ value; int /*<<< orphan*/  lock; int /*<<< orphan*/  sem; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ SEM_VALUE_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4 (sem_t * sem)
     /*
      * ------------------------------------------------------
      * DOCPUBLIC
      *      This function posts a wakeup to a semaphore.
      *
      * PARAMETERS
      *      sem
      *              pointer to an instance of sem_t
      *
      * DESCRIPTION
      *      This function posts a wakeup to a semaphore. If there
      *      are waiting threads (or processes), one is awakened;
      *      otherwise, the semaphore value is incremented by one.
      *
      * RESULTS
      *              0               successfully posted semaphore,
      *              -1              failed, error in errno
      * ERRNO
      *              EINVAL          'sem' is not a valid semaphore,
      *              ENOSYS          semaphores are not supported,
      *              ERANGE          semaphore count is too big
      *
      * ------------------------------------------------------
      */
{
  int result = 0;
  sem_t s = *sem;

  if (s == NULL)
    {
      result = EINVAL;
    }
  else if ((result = FUNC2 (&s->lock)) == 0)
    {
      /* See sem_destroy.c
       */
      if (*sem == NULL)
        {
          (void) FUNC3 (&s->lock);
          result = EINVAL;
          return -1;
        }

      if (s->value < SEM_VALUE_MAX)
	{
#if defined(NEED_SEM)
	  if (++s->value <= 0
	      && !SetEvent(s->sem))
	    {
	      s->value--;
	      result = EINVAL;
	    }
#else
	  if (++s->value <= 0
	      && !FUNC0 (s->sem, 1, NULL))
	    {
	      s->value--;
	      result = EINVAL;
	    }
#endif /* NEED_SEM */
	}
      else
	{
	  result = ERANGE;
	}

      (void) FUNC3 (&s->lock);
    }

  if (result != 0)
    {
      errno = result;
      return -1;
    }

  return 0;

}
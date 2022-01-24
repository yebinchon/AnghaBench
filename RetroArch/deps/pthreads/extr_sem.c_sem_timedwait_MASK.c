#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timespec {int dummy; } ;
struct TYPE_4__ {int* resultPtr; TYPE_2__* sem; } ;
typedef  TYPE_1__ sem_timedwait_cleanup_args_t ;
typedef  TYPE_2__* sem_t ;
struct TYPE_5__ {int value; int /*<<< orphan*/  sem; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 void* EINVAL ; 
 int errno ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int*) ; 
 unsigned int FUNC1 (struct timespec const*) ; 
 int /*<<< orphan*/  pte_sem_timedwait_cleanup ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int
FUNC7 (sem_t * sem, const struct timespec *abstime)
/*
 * ------------------------------------------------------
 * DOCPUBLIC
 *      This function waits on a semaphore possibly until
 *      'abstime' time.
 *
 * PARAMETERS
 *      sem
 *              pointer to an instance of sem_t
 *
 *      abstime
 *              pointer to an instance of struct timespec
 *
 * DESCRIPTION
 *      This function waits on a semaphore. If the
 *      semaphore value is greater than zero, it decreases
 *      its value by one. If the semaphore value is zero, then
 *      the calling thread (or process) is blocked until it can
 *      successfully decrease the value or until interrupted by
 *      a signal.
 *
 *      If 'abstime' is a NULL pointer then this function will
 *      block until it can successfully decrease the value or
 *      until interrupted by a signal.
 *
 * RESULTS
 *              0               successfully decreased semaphore,
 *              -1              failed, error in errno
 * ERRNO
 *              EINVAL          'sem' is not a valid semaphore,
 *              ENOSYS          semaphores are not supported,
 *              EINTR           the function was interrupted by a signal,
 *              EDEADLK         a deadlock condition was detected.
 *              ETIMEDOUT       abstime elapsed before success.
 *
 * ------------------------------------------------------
 */
{
   int result = 0;
   sem_t s = *sem;

   FUNC6();

   if (sem == NULL)
      result = EINVAL;
   else
   {
      unsigned int milliseconds;
      unsigned int *pTimeout;

      if (abstime == NULL)
      {
         pTimeout = NULL;
      }
      else
      {
         /*
          * Calculate timeout as milliseconds from current system time.
          */
         milliseconds = FUNC1 (abstime);
         pTimeout = &milliseconds;
      }

      if ((result = FUNC4 (&s->lock)) == 0)
      {
         int v;

         /* See sem_destroy.c
         */
         if (*sem == NULL)
         {
            (void) FUNC5 (&s->lock);
            errno = EINVAL;
            return -1;
         }

         v = --s->value;
         (void) FUNC5 (&s->lock);

         if (v < 0)
         {

            {
               sem_timedwait_cleanup_args_t cleanup_args;

               cleanup_args.sem = s;
               cleanup_args.resultPtr = &result;

               /* Must wait */
               FUNC3(pte_sem_timedwait_cleanup, (void *) &cleanup_args);

               result = FUNC0(s->sem,pTimeout);

               FUNC2(result);
            }
         }
      }

   }

   if (result != 0)
   {

      errno = result;
      return -1;

   }

   return 0;
}
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
struct TYPE_3__ {int value; int /*<<< orphan*/  sem; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 void* EINVAL ; 
 int errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pte_sem_wait_cleanup ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6 (sem_t * sem)
   /*
    * ------------------------------------------------------
    * DOCPUBLIC
    *      This function  waits on a semaphore.
    *
    * PARAMETERS
    *      sem
    *              pointer to an instance of sem_t
    *
    * DESCRIPTION
    *      This function waits on a semaphore. If the
    *      semaphore value is greater than zero, it decreases
    *      its value by one. If the semaphore value is zero, then
    *      the calling thread (or process) is blocked until it can
    *      successfully decrease the value or until interrupted by
    *      a signal.
    *
    * RESULTS
    *              0               successfully decreased semaphore,
    *              -1              failed, error in errno
    * ERRNO
    *              EINVAL          'sem' is not a valid semaphore,
    *              ENOSYS          semaphores are not supported,
    *              EINTR           the function was interrupted by a signal,
    *              EDEADLK         a deadlock condition was detected.
    *
    * ------------------------------------------------------
    */
{
   int result = 0;
   sem_t s = *sem;

   FUNC5();

   if (s == NULL)
   {
      result = EINVAL;
   }
   else
   {
      if ((result = FUNC3 (&s->lock)) == 0)
      {
         int v;

         /* See sem_destroy.c
         */
         if (*sem == NULL)
         {
            (void) FUNC4 (&s->lock);
            errno = EINVAL;
            return -1;
         }

         v = --s->value;
         (void) FUNC4 (&s->lock);

         if (v < 0)
         {
            /* Must wait */
            FUNC2(pte_sem_wait_cleanup, (void *) s);
            result = FUNC0(s->sem,NULL);
            /* Cleanup if we're canceled or on any other error */
            FUNC1(result);

            // Wait was cancelled, indicate that we're no longer waiting on this semaphore.
            /*
               if (result == PTE_OS_INTERRUPTED)
               {
               result = EINTR;
               ++s->value;
               }
               */
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
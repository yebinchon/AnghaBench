#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* pthread_mutex_t ;
struct TYPE_7__ {scalar_t__ kind; int recursive_count; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int EBUSY ; 
 TYPE_1__* PTHREAD_ERRORCHECK_MUTEX_INITIALIZER ; 
 scalar_t__ PTHREAD_MUTEX_RECURSIVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  pte_mutex_test_init_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__**) ; 
 int FUNC5 (TYPE_1__**) ; 

int FUNC6 (pthread_mutex_t * mutex)
{
   int result = 0;
   pthread_mutex_t mx;

   /*
    * Let the system deal with invalid pointers.
    */

   /*
    * Check to see if we have something to delete.
    */
   if (*mutex < PTHREAD_ERRORCHECK_MUTEX_INITIALIZER)
   {
      mx = *mutex;

      result = FUNC4 (&mx);

      /*
       * If trylock succeeded and the mutex is not recursively locked it
       * can be destroyed.
       */
      if (result == 0)
      {
         if (mx->kind != PTHREAD_MUTEX_RECURSIVE || 1 == mx->recursive_count)
         {
            /*
             * FIXME!!!
             * The mutex isn't held by another thread but we could still
             * be too late invalidating the mutex below since another thread
             * may already have entered mutex_lock and the check for a valid
             * *mutex != NULL.
             *
             * Note that this would be an unusual situation because it is not
             * common that mutexes are destroyed while they are still in
             * use by other threads.
             */
            *mutex = NULL;

            result = FUNC5 (&mx);

            if (result == 0)
            {
               FUNC3(mx->handle);

               FUNC0(mx);

            }
            else
            {
               /*
                * Restore the mutex before we return the error.
                */
               *mutex = mx;
            }
         }
         else			/* mx->recursive_count > 1 */
         {
            /*
             * The mutex must be recursive and already locked by us (this thread).
             */
            mx->recursive_count--;	/* Undo effect of pthread_mutex_trylock() above */
            result = EBUSY;
         }
      }
   }
   else
   {
      /*
       * See notes in pte_mutex_check_need_init() above also.
       */

      FUNC1 (pte_mutex_test_init_lock);


      /*
       * Check again.
       */
      if (*mutex >= PTHREAD_ERRORCHECK_MUTEX_INITIALIZER)
      {
         /*
          * This is all we need to do to destroy a statically
          * initialised mutex that has not yet been used (initialised).
          * If we get to here, another thread
          * waiting to initialise this mutex will get an EINVAL.
          */
         *mutex = NULL;
      }
      else
      {
         /*
          * The mutex has been initialised while we were waiting
          * so assume it's in use.
          */
         result = EBUSY;
      }

      FUNC2(pte_mutex_test_init_lock);

   }

   return (result);
}
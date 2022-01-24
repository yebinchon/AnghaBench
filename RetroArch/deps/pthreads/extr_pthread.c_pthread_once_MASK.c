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
struct TYPE_3__ {int state; scalar_t__ semaphore; int /*<<< orphan*/  numSemaphoreUsers; } ;
typedef  TYPE_1__ pthread_once_t ;
typedef  scalar_t__ pte_osSemaphoreHandle ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int*,int) ; 
 scalar_t__ FUNC3 (int*,long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int PTE_ONCE_DONE ; 
 int PTE_ONCE_INIT ; 
 scalar_t__ PTE_ONCE_STARTED ; 
 int /*<<< orphan*/  pte_once_init_routine_cleanup ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void*) ; 
 void FUNC11 () ; 

int FUNC12 (pthread_once_t * once_control, void (*init_routine) (void))
/*
 * ------------------------------------------------------
 * DOCPUBLIC
 *      If any thread in a process  with  a  once_control  parameter
 *      makes  a  call to pthread_once(), the first call will summon
 *      the init_routine(), but  subsequent  calls  will  not. The
 *      once_control  parameter  determines  whether  the associated
 *      initialization routine has been called.  The  init_routine()
 *      is complete upon return of pthread_once().
 *      This function guarantees that one and only one thread
 *      executes the initialization routine, init_routine when
 *      access is controlled by the pthread_once_t control
 *      key.
 *
 *      pthread_once() is not a cancelation point, but the init_routine
 *      can be. If it's cancelled then the effect on the once_control is
 *      as if pthread_once had never been entered.
 *
 *
 * PARAMETERS
 *      once_control
 *              pointer to an instance of pthread_once_t
 *
 *      init_routine
 *              pointer to an initialization routine
 *
 *
 * DESCRIPTION
 *      See above.
 *
 * RESULTS
 *              0               success,
 *              EINVAL          once_control or init_routine is NULL
 *
 * ------------------------------------------------------
 */
{
   int result;
   int state;
   pte_osSemaphoreHandle sema;

   if (once_control == NULL || init_routine == NULL)
   {
      result = EINVAL;
      goto FAIL0;
   }
   else
   {
      result = 0;
   }

   while ((state =
            FUNC0(&once_control->state,
               PTE_ONCE_STARTED,
               PTE_ONCE_INIT))
         != PTE_ONCE_DONE)
   {
      if (PTE_ONCE_INIT == state)
      {


         FUNC10(pte_once_init_routine_cleanup, (void *) once_control);
         (*init_routine)();
         FUNC9(0);

         (void) FUNC2(&once_control->state,PTE_ONCE_DONE);

         /*
          * we didn't create the semaphore.
          * it is only there if there is someone waiting.
          */
         if (FUNC3((int*)&once_control->semaphore, 0L)) /* MBR fence */
            FUNC8((pte_osSemaphoreHandle) once_control->semaphore,once_control->numSemaphoreUsers);
      }
      else
      {
         FUNC4(&once_control->numSemaphoreUsers);

         if (!FUNC3((int*)&once_control->semaphore, 0L)) /* MBR fence */
         {
            FUNC5(0, (pte_osSemaphoreHandle*) &sema);

            if (FUNC0((int *) &once_control->semaphore,
                     (int) sema,
                     0))
               FUNC6((pte_osSemaphoreHandle)sema);
         }

         /*
          * Check 'state' again in case the initting thread has finished or
          * cancelled and left before seeing that there was a semaphore.
          */
         if (FUNC3(&once_control->state, 0L) == PTE_ONCE_STARTED)
            FUNC7((pte_osSemaphoreHandle) once_control->semaphore,NULL);

         if (0 == FUNC1(&once_control->numSemaphoreUsers))
         {
            /* we were last */
            if ((sema =
                     (pte_osSemaphoreHandle) FUNC2((int *) &once_control->semaphore,0)))
               FUNC6(sema);
         }
      }
   }

   /*
    * ------------
    * Failure Code
    * ------------
    */
FAIL0:
   return (result);
}
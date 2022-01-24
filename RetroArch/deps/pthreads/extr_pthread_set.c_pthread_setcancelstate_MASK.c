#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pthread_t ;
struct TYPE_2__ {int cancelState; scalar_t__ cancelType; int /*<<< orphan*/  cancelLock; int /*<<< orphan*/  state; int /*<<< orphan*/  threadId; } ;
typedef  TYPE_1__ pte_thread_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PTE_EPS_CANCEL ; 
 scalar_t__ PTE_OS_INTERRUPTED ; 
 scalar_t__ PTHREAD_CANCEL_ASYNCHRONOUS ; 
 int PTHREAD_CANCEL_DISABLE ; 
 int PTHREAD_CANCEL_ENABLE ; 
 int /*<<< orphan*/  PThreadStateCanceling ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 

int FUNC5 (int state, int *oldstate)
/*
 * ------------------------------------------------------
 * DOCPUBLIC
 *      This function atomically sets the calling thread's
 *      cancelability state to 'state' and returns the previous
 *      cancelability state at the location referenced by
 *      'oldstate'
 *
 * PARAMETERS
 *      state,
 *      oldstate
 *              PTHREAD_CANCEL_ENABLE
 *                      cancellation is enabled,
 *
 *              PTHREAD_CANCEL_DISABLE
 *                      cancellation is disabled
 *
 *
 * DESCRIPTION
 *      This function atomically sets the calling thread's
 *      cancelability state to 'state' and returns the previous
 *      cancelability state at the location referenced by
 *      'oldstate'.
 *
 *      NOTES:
 *      1)      Use to disable cancellation around 'atomic' code that
 *              includes cancellation points
 *
 * COMPATIBILITY ADDITIONS
 *      If 'oldstate' is NULL then the previous state is not returned
 *      but the function still succeeds. (Solaris)
 *
 * RESULTS
 *              0               successfully set cancelability type,
 *              EINVAL          'state' is invalid
 *
 * ------------------------------------------------------
 */
{
   int result = 0;
   pthread_t self = FUNC4 ();
   pte_thread_t * sp = (pte_thread_t *) self;

   if (sp == NULL
         || (state != PTHREAD_CANCEL_ENABLE && state != PTHREAD_CANCEL_DISABLE))
      return EINVAL;

   /*
    * Lock for async-cancel safety.
    */
   (void) FUNC2 (&sp->cancelLock);

   if (oldstate != NULL)
      *oldstate = sp->cancelState;

   sp->cancelState = state;

   /*
    * Check if there is a pending asynchronous cancel
    */
   if (state == PTHREAD_CANCEL_ENABLE
         && (sp->cancelType == PTHREAD_CANCEL_ASYNCHRONOUS)
         && (FUNC0(sp->threadId) == PTE_OS_INTERRUPTED) )
   {
      sp->state = PThreadStateCanceling;
      sp->cancelState = PTHREAD_CANCEL_DISABLE;
      (void) FUNC3 (&sp->cancelLock);
      FUNC1 (PTE_EPS_CANCEL);

      /* Never reached */
   }

   (void) FUNC3 (&sp->cancelLock);

   return (result);
}
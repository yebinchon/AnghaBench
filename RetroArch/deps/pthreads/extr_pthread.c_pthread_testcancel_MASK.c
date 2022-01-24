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
struct TYPE_2__ {scalar_t__ state; scalar_t__ cancelState; int /*<<< orphan*/  cancelLock; } ;
typedef  TYPE_1__ pte_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTE_EPS_CANCEL ; 
 scalar_t__ PTHREAD_CANCEL_DISABLE ; 
 scalar_t__ PThreadStateCancelPending ; 
 scalar_t__ PThreadStateCanceling ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 

void FUNC4 (void)
/*
 * ------------------------------------------------------
 * DOCPUBLIC
 *      This function creates a deferred cancellation point
 *      in the calling thread. The call has no effect if the
 *      current cancelability state is
 *              PTHREAD_CANCEL_DISABLE
 *
 * PARAMETERS
 *      N/A
 *
 *
 * DESCRIPTION
 *      This function creates a deferred cancellation point
 *      in the calling thread. The call has no effect if the
 *      current cancelability state is
 *              PTHREAD_CANCEL_DISABLE
 *
 *      NOTES:
 *      1)      Cancellation is asynchronous. Use pthread_join
 *              to wait for termination of thread if necessary
 *
 * RESULTS
 *              N/A
 *
 * ------------------------------------------------------
 */
{
   pthread_t self = FUNC3 ();
   pte_thread_t * sp = (pte_thread_t *) self;

   if (sp == NULL)
      return;

   /*
    * Pthread_cancel() will have set sp->state to PThreadStateCancelPending
    * and set an event, so no need to enter kernel space if
    * sp->state != PThreadStateCancelPending - that only slows us down.
    */
   if (sp->state != PThreadStateCancelPending)
      return;

   (void) FUNC1 (&sp->cancelLock);

   if (sp->cancelState != PTHREAD_CANCEL_DISABLE)
   {
      sp->state = PThreadStateCanceling;
      sp->cancelState = PTHREAD_CANCEL_DISABLE;

      (void) FUNC2 (&sp->cancelLock);
      FUNC0 (PTE_EPS_CANCEL);
   }

   (void) FUNC2 (&sp->cancelLock);
}
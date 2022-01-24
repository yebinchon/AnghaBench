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
struct timespec {long tv_sec; long tv_nsec; } ;
typedef  int /*<<< orphan*/ * pthread_t ;
struct TYPE_2__ {scalar_t__ cancelState; scalar_t__ state; int /*<<< orphan*/  cancelLock; int /*<<< orphan*/  threadId; } ;
typedef  TYPE_1__ pte_thread_t ;
typedef  scalar_t__ pte_osResult ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ESRCH ; 
 int /*<<< orphan*/  PTE_EPS_CANCEL ; 
 scalar_t__ PTE_OS_INTERRUPTED ; 
 scalar_t__ PTE_OS_OK ; 
 scalar_t__ PTHREAD_CANCEL_DISABLE ; 
 scalar_t__ PTHREAD_CANCEL_ENABLE ; 
 scalar_t__ PThreadStateCanceling ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7 (struct timespec *interval)
{
   unsigned int wait_time;
   unsigned int secs_in_millisecs;
   unsigned int millisecs;
   pthread_t self;
   pte_thread_t * sp;

   if (interval == NULL)
      return EINVAL;

   if (interval->tv_sec == 0L && interval->tv_nsec == 0L)
   {
      FUNC6 ();
      FUNC1 (1);
      FUNC6 ();
      return (0);
   }

   /* convert secs to millisecs */
   secs_in_millisecs = interval->tv_sec * 1000L;

   /* convert nanosecs to millisecs (rounding up) */
   millisecs = (interval->tv_nsec + 999999L) / 1000000L;

   wait_time = secs_in_millisecs + millisecs;

   if (NULL == (self = FUNC5 ()))
      return ENOMEM;

   sp = (pte_thread_t *) self;

   if (sp->cancelState == PTHREAD_CANCEL_ENABLE)
   {
      pte_osResult cancelStatus;
      /*
       * Async cancelation won't catch us until wait_time is up.
       * Deferred cancelation will cancel us immediately.
       */
      cancelStatus = FUNC0(sp->threadId);

      if (cancelStatus == PTE_OS_INTERRUPTED)
      {
         /*
          * Canceling!
          */
         (void) FUNC3 (&sp->cancelLock);
         if (sp->state < PThreadStateCanceling)
         {
            sp->state = PThreadStateCanceling;
            sp->cancelState = PTHREAD_CANCEL_DISABLE;
            (void) FUNC4 (&sp->cancelLock);

            FUNC2 (PTE_EPS_CANCEL);
         }

         (void) FUNC4 (&sp->cancelLock);
         return ESRCH;
      }
      else if (cancelStatus != PTE_OS_OK)
         return EINVAL;
   }
   else

      FUNC1 (wait_time);

   return (0);
}
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
struct timespec {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  orig_context; int /*<<< orphan*/  (* orig_expiration_routine ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  expires; int /*<<< orphan*/  settings_changed; int /*<<< orphan*/  quit; } ;
typedef  TYPE_1__ VCOS_TIMER_T ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct timespec*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void* FUNC9(void *arg)
{
   VCOS_TIMER_T *timer = (VCOS_TIMER_T*)arg;

   FUNC6(&timer->lock);
   while (!timer->quit)
   {
      struct timespec now;

      /* Wait until next expiry time, or until timer's settings are changed */
      if (FUNC1(&timer->expires))
         FUNC5(&timer->settings_changed, &timer->lock);
      else
         FUNC4(&timer->settings_changed, &timer->lock, &timer->expires);

      /* See if the timer has expired - reloop if it didn't */
      FUNC3(CLOCK_REALTIME, &now);
      if (FUNC1(&timer->expires) || FUNC0(&timer->expires, &now))
         continue;

      /* The timer has expired. Clear the expiry time and call the
       * expiration routine
       */
      FUNC2(&timer->expires);
      timer->orig_expiration_routine(timer->orig_context);
   }
   FUNC7(&timer->lock);

   return NULL;
}
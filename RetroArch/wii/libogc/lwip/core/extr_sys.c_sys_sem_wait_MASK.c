#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32_t ;
typedef  int /*<<< orphan*/  (* sys_timeout_handler ) (void*) ;
typedef  int /*<<< orphan*/  sys_sem_t ;
struct sys_timeouts {struct sys_timeout* next; } ;
struct sys_timeout {scalar_t__ time; void* arg; int /*<<< orphan*/  (* h ) (void*) ;struct sys_timeout* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MEMP_SYS_TIMEOUT ; 
 scalar_t__ SYS_ARCH_TIMEOUT ; 
 int /*<<< orphan*/  SYS_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sys_timeout*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct sys_timeouts* FUNC3 () ; 

void
FUNC4(sys_sem_t sem)
{
  u32_t time;
  struct sys_timeouts *timeouts;
  struct sys_timeout *tmptimeout;
  sys_timeout_handler h;
  void *arg;

  /*  while (sys_arch_sem_wait(sem, 1000) == 0);
      return;*/

 again:

  timeouts = FUNC3();

  if (!timeouts || !timeouts->next) {
    FUNC2(sem, 0);
  } else {
    if (timeouts->next->time > 0) {
      time = FUNC2(sem, timeouts->next->time);
    } else {
      time = SYS_ARCH_TIMEOUT;
    }

    if (time == SYS_ARCH_TIMEOUT) {
      /* If time == SYS_ARCH_TIMEOUT, a timeout occured before a message
   could be fetched. We should now call the timeout handler and
   deallocate the memory allocated for the timeout. */
      tmptimeout = timeouts->next;
      timeouts->next = tmptimeout->next;
      h = tmptimeout->h;
      arg = tmptimeout->arg;
      FUNC1(MEMP_SYS_TIMEOUT, tmptimeout);
      if (h != NULL) {
        FUNC0(SYS_DEBUG, ("ssw h=%p(%p)\n", (void )h, (void *)arg));
        h(arg);
      }

      /* We try again to fetch a message from the mbox. */
      goto again;
    } else {
      /* If time != SYS_ARCH_TIMEOUT, a message was received before the timeout
   occured. The time variable is set to the number of
   milliseconds we waited for the message. */
      if (time <= timeouts->next->time) {
  timeouts->next->time -= time;
      } else {
  timeouts->next->time = 0;
      }
    }

  }
}
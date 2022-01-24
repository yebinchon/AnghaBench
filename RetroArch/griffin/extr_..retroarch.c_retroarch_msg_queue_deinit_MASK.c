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

/* Variables and functions */
 int /*<<< orphan*/ * _runloop_msg_queue_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * runloop_msg_queue ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
   FUNC1();

   if (!runloop_msg_queue)
      return;

   FUNC0(runloop_msg_queue);

   FUNC2();
#ifdef HAVE_THREADS
   slock_free(_runloop_msg_queue_lock);
   _runloop_msg_queue_lock = NULL;
#endif

   runloop_msg_queue = NULL;
}
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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ btstack_quit_source ; 
 int /*<<< orphan*/ * btstack_thread ; 
 int /*<<< orphan*/  btstack_thread_func ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(bool on)
{
   if (!FUNC1())
      return;

   if (on && !btstack_thread)
      btstack_thread = FUNC2(btstack_thread_func, NULL);
   else if (!on && btstack_thread && btstack_quit_source)
   {
#ifdef __APPLE__
      CFRunLoopSourceSignal(btstack_quit_source);
#endif
      FUNC3(btstack_thread);
      btstack_thread = NULL;
   }
}
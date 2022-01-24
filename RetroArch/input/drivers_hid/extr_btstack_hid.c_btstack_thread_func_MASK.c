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
struct TYPE_3__ {int /*<<< orphan*/  member_9; int /*<<< orphan*/  member_8; int /*<<< orphan*/  member_7; int /*<<< orphan*/  member_6; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ CFRunLoopSourceContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_POWER_ON ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btstack_quit_source ; 
 int /*<<< orphan*/  btstack_set_power_mode_ptr ; 
 int /*<<< orphan*/  btstack_thread_stop ; 
 int /*<<< orphan*/  kCFRunLoopCommonModes ; 

__attribute__((used)) static void FUNC9(void* data)
{
   FUNC6("[BTstack]: Thread started");

   if (FUNC7())
      return;

#ifdef __APPLE__
   CFRunLoopSourceContext ctx = { 0, 0, 0, 0, 0, 0, 0, 0, 0, btstack_thread_stop };
   btstack_quit_source = CFRunLoopSourceCreate(0, 0, &ctx);
   CFRunLoopAddSource(CFRunLoopGetCurrent(), btstack_quit_source, kCFRunLoopCommonModes);
#endif

   FUNC6("[BTstack]: Turning on...\n");
   FUNC8(btstack_set_power_mode_ptr, HCI_POWER_ON);

   FUNC6("BTstack: Thread running...\n");
#ifdef __APPLE__
   CFRunLoopRun();
#endif

   FUNC6("[BTstack]: Thread done.\n");

#ifdef __APPLE__
   CFRunLoopSourceInvalidate(btstack_quit_source);
   CFRelease(btstack_quit_source);
#endif
}
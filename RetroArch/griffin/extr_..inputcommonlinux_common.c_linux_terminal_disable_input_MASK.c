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
struct TYPE_2__ {int /*<<< orphan*/  member_0; } ;
struct sigaction {int sa_flags; int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; TYPE_1__ member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  KDSKBMODE ; 
 int /*<<< orphan*/  K_MEDIUMRAW ; 
 int SA_RESETHAND ; 
 int SA_RESTART ; 
 int /*<<< orphan*/  SIGABRT ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  linux_terminal_restore_input ; 
 int /*<<< orphan*/  linux_terminal_restore_signal ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

bool FUNC7(void)
{
   struct sigaction sa = {0};

   /* Avoid accidentally typing stuff. */
   if (!FUNC2(0))
      return false;

   if (!FUNC4())
      return false;

   if (FUNC1(0, KDSKBMODE, K_MEDIUMRAW) < 0)
   {
      FUNC3();
      return false;
   }

   sa.sa_handler = linux_terminal_restore_signal;
   sa.sa_flags   = SA_RESTART | SA_RESETHAND;
   FUNC6(&sa.sa_mask);

   /* Trap some standard termination codes so we
    * can restore the keyboard before we lose control. */
   FUNC5(SIGABRT, &sa, NULL);
   FUNC5(SIGBUS,  &sa, NULL);
   FUNC5(SIGFPE,  &sa, NULL);
   FUNC5(SIGILL,  &sa, NULL);
   FUNC5(SIGQUIT, &sa, NULL);
   FUNC5(SIGSEGV, &sa, NULL);

   FUNC0(linux_terminal_restore_input);

   return true;
}
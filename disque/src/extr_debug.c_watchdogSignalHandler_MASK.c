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
typedef  int /*<<< orphan*/  ucontext_t ;
typedef  int /*<<< orphan*/  siginfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(int sig, siginfo_t *info, void *secret) {
#ifdef HAVE_BACKTRACE
    ucontext_t *uc = (ucontext_t*) secret;
#endif
    FUNC0(*info);
    FUNC0(sig);

    FUNC2(LL_WARNING,"\n--- WATCHDOG TIMER EXPIRED ---");
#ifdef HAVE_BACKTRACE
    logStackTrace(uc);
#else
    FUNC2(LL_WARNING,"Sorry: no support for backtrace().");
#endif
    FUNC2(LL_WARNING,"--------\n");
}
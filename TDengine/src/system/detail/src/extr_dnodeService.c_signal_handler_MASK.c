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
struct TYPE_3__ {int /*<<< orphan*/  si_pid; } ;
typedef  TYPE_1__ siginfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int SIGUSR1 ; 
 int SIGUSR2 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6(int signum, siginfo_t *sigInfo, void *context) {
  if (signum == SIGUSR1) {
    FUNC5("debugFlag 135");
    return;
  }
  if (signum == SIGUSR2) {
    FUNC5("resetlog");
    return;
  }
  FUNC4(LOG_INFO, "Shut down signal is %d", signum);
  FUNC4(LOG_INFO, "Shutting down TDengine service...");
  // clean the system.
  FUNC1("shut down signal is %d, sender PID:%d", signum, sigInfo->si_pid);
  FUNC2();
  // close the syslog
  FUNC4(LOG_INFO, "Shut down TDengine service successfully");
  FUNC1("TDengine is shut down!");
  FUNC0();
  FUNC3(EXIT_SUCCESS);
}
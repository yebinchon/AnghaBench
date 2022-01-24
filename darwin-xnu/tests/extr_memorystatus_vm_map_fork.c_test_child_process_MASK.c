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
struct rusage {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIGCONT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,struct rusage*) ; 

__attribute__((used)) static void
FUNC5(pid_t child_pid, int *status, struct rusage *ru)
{
	int err = 0;
	pid_t got_pid;

	FUNC2("  continuing child[%d]\n", child_pid);

	err = FUNC3(child_pid, SIGCONT);
	T_QUIET; FUNC1(err, "  kill(%d, SIGCONT) failed", child_pid);

	FUNC2("  waiting for child[%d] to exit", child_pid);

	got_pid = FUNC4(child_pid, status, 0, ru);
	T_QUIET; FUNC0(child_pid, got_pid, "  wait4(%d, ...) returned %d", child_pid, got_pid);
}
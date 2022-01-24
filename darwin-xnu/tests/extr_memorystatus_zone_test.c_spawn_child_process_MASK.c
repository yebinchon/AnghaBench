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
typedef  int pid_t ;
typedef  int /*<<< orphan*/  helper_func ;
struct TYPE_2__ {int /*<<< orphan*/  helper_func; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_CHILD_PROCS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int* child_pids ; 
 TYPE_1__ current_test ; 
 int FUNC3 (int*,char**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  num_children ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 char* testpath ; 

__attribute__((used)) static void FUNC5(void)
{
	pid_t pid = -1;
	char helper_func[50];
	char *launch_tool_args[4];

	T_QUIET; FUNC0(num_children, MAX_CHILD_PROCS, "Spawned %d children. Timing out...", MAX_CHILD_PROCS);

	FUNC4(helper_func, current_test.helper_func, sizeof(helper_func));
	launch_tool_args[0] = testpath;
	launch_tool_args[1] = "-n";
	launch_tool_args[2] = helper_func;
	launch_tool_args[3] = NULL;

	/* Spawn the child process */
	int rc = FUNC3(&pid, launch_tool_args, false, NULL, NULL);
	if (rc != 0) {
		FUNC2("dt_launch tool returned %d with error code %d", rc, errno);
	}
	T_QUIET; FUNC1(pid, "dt_launch_tool");

	child_pids[num_children++] = pid;
}
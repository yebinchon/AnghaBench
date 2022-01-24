#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* proc_config_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  (* child_action_handler_t ) (TYPE_1__*,int) ;
struct TYPE_6__ {int child_count; int /*<<< orphan*/ * parent_pipe; int /*<<< orphan*/ ** child_pipe; int /*<<< orphan*/ * child_pids; scalar_t__ cow_map; int /*<<< orphan*/  proc_grp_id; } ;

/* Variables and functions */
 int MAP_ANON ; 
 int /*<<< orphan*/  MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 size_t PIPE_IN ; 
 size_t PIPE_OUT ; 
 int /*<<< orphan*/  PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static proc_config_t
FUNC11(int child_count, child_action_handler_t child_handler)
{
	/*
	 * Spawn procs for Tests 1.2 and 1.3
	 */
	FUNC2("Spawning child processes...");
	proc_config_t proc_config = FUNC7(sizeof(*proc_config));
	int action                = 0;
	int err;

	FUNC10(0, 0);
	proc_config->proc_grp_id = FUNC6(0);

	proc_config->child_count = child_count;

	err = FUNC9(proc_config->parent_pipe);
	T_QUIET;
	FUNC1(err, "pipe() call");

	/*
	 * Needed for ACT_PHASE3 tests
	 */
	proc_config->cow_map = FUNC8(0, PAGE_SIZE, PROT_WRITE, MAP_ANON | MAP_PRIVATE, -1, 0);
	T_QUIET;
	FUNC0(proc_config->cow_map, MAP_FAILED, "cow_map mmap()");
	*((int *)(proc_config->cow_map)) = 10;

	pid_t child_pid;
	int i;
	int child_id;
	for (i = 0; i < child_count; i++) {
		err = FUNC9(proc_config->child_pipe[i]);
		T_QUIET;
		FUNC1(err, "pipe() call");

		child_pid = FUNC5();
		child_id  = i;
		T_QUIET;
		FUNC1(child_pid, "fork() in parent process for child %d", child_id);

		if (child_pid == 0) {
			child_handler(proc_config, child_id);
		} else {
			proc_config->child_pids[child_id] = child_pid;
		}
		FUNC4(proc_config->child_pipe[child_id][PIPE_IN]);
	}
	/*
	 * Wait for the children processes to spawn
	 */
	FUNC4(proc_config->parent_pipe[PIPE_OUT]);
	FUNC3(proc_config->parent_pipe[PIPE_IN], action, child_count);

	return proc_config;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* proc_config_t ;
struct TYPE_4__ {int child_count; int /*<<< orphan*/  cow_map; int /*<<< orphan*/ * parent_pipe; int /*<<< orphan*/ * child_pids; int /*<<< orphan*/ ** child_pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACT_EXIT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 size_t PIPE_IN ; 
 size_t PIPE_OUT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(proc_config_t proc_config)
{
	int ret = 0;
	FUNC1("Killing child processes");
	FUNC5(proc_config, ACT_EXIT);
	for (int child_id = 0; child_id < proc_config->child_count; child_id++) {
		FUNC2(proc_config->child_pipe[child_id][PIPE_OUT]);
		FUNC3(proc_config->child_pids[child_id], NULL, NULL, 5);
		T_QUIET;
		FUNC0(ret, "killed child %d", child_id);
	}
	FUNC2(proc_config->parent_pipe[PIPE_IN]);
	FUNC4(proc_config->cow_map, PAGE_SIZE);
	FUNC1("Killed child processes");
}
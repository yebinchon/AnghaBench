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
typedef  unsigned long long uint64_t ;
struct rusage {int /*<<< orphan*/  ru_maxrss; } ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  memlimit_str ;
typedef  int /*<<< orphan*/  max_task_pmem ;
typedef  enum child_exits { ____Placeholder_child_exits } child_exits ;

/* Variables and functions */
 int /*<<< orphan*/  JETSAM_PRIORITY_FOREGROUND ; 
 int LIMIT_DELTA_MB ; 
 unsigned long long MEMORYSTATUS_VM_MAP_FORK_ALLOWED ; 
 unsigned long long MEMORYSTATUS_VM_MAP_FORK_NOT_ALLOWED ; 
 int /*<<< orphan*/  NORMAL_EXIT ; 
 int NUM_CHILD_EXIT ; 
 scalar_t__ SIGKILL ; 
 int TEST_ALLOWED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long,unsigned long long,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long,unsigned long long,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char** child_exit_why ; 
 unsigned long long FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,char*,short,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int*,struct rusage*) ; 
 int /*<<< orphan*/  testpath ; 
 int /*<<< orphan*/  testpath_size ; 
 int /*<<< orphan*/  FUNC19 (int) ; 

__attribute__((used)) static void
FUNC20(int test_variant)
{
	int		max_task_pmem = 0; /* MB */
	size_t		size = 0;
	int		active_limit_mb = 0;
	int		inactive_limit_mb = 0;
	short		flags = 0;
	char		memlimit_str[16];
	pid_t		child_pid;
	int		child_status;
	uint64_t	kernel_pidwatch_val;
	uint64_t 	expected_pidwatch_val;
	int		ret;
	struct rusage	ru;
	enum child_exits exit_val;

	/*
	 * The code to set/get the pidwatch sysctl is only in
	 * development kernels. Skip the test if not on one.
	 */
	if (!FUNC12()) {
		FUNC5("Can't test on release kernel");
	}

	/*
	 * Determine a memory limit based on system having one or not.
	 */
	size = sizeof(max_task_pmem);
	(void)FUNC17("kern.max_task_pmem", &max_task_pmem, &size, NULL, 0);
	if (max_task_pmem <= 0)
		max_task_pmem = 0;

	if (test_variant == TEST_ALLOWED) {
		
		/*
		 * Tell the child to allocate less than 1/4 the system wide limit.
		 */
		if (max_task_pmem / 4 - LIMIT_DELTA_MB <= 0) {
			active_limit_mb = LIMIT_DELTA_MB;
		} else {
			active_limit_mb = max_task_pmem / 4 - LIMIT_DELTA_MB;
		}
		expected_pidwatch_val = MEMORYSTATUS_VM_MAP_FORK_ALLOWED;

	} else { /* TEST_NOT_ALLOWED */

		/*
		 * Tell the child to allocate more than 1/4 the system wide limit.
		 */
		active_limit_mb = (max_task_pmem / 4) + LIMIT_DELTA_MB;
		if (max_task_pmem == 0) {
			expected_pidwatch_val = MEMORYSTATUS_VM_MAP_FORK_ALLOWED;
		} else {
			expected_pidwatch_val = MEMORYSTATUS_VM_MAP_FORK_NOT_ALLOWED;
		}

	}
	inactive_limit_mb = active_limit_mb;
	FUNC4("using limit of %d Meg", active_limit_mb);

	/*
	 * When run as part of a larger suite, a previous test
	 * may have left the system temporarily with too little
	 * memory to run this test. We try to detect if there is
	 * enough free memory to proceed, waiting a little bit
	 * for memory to free up.
	 */
	FUNC19(active_limit_mb);

#if defined(__x86_64__)
	/*
	 * vm_map_fork() is always allowed on desktop.
	 */
	expected_pidwatch_val = MEMORYSTATUS_VM_MAP_FORK_ALLOWED;
#endif

	/*
	 * Prepare the arguments needed to spawn the child process.
	 */
	FUNC13 (memlimit_str, 0, sizeof(memlimit_str));
	(void)FUNC16(memlimit_str, "%d", active_limit_mb);

	ret = FUNC10(testpath, &testpath_size);
	T_QUIET; FUNC2(ret, "_NSGetExecutablePath(%s, ...)", testpath);

	/*
	 * We put the child process in FOREGROUND to try and keep jetsam's hands off it.
	 */
	child_pid = FUNC15(testpath, memlimit_str, flags,
	    JETSAM_PRIORITY_FOREGROUND, active_limit_mb, inactive_limit_mb);

	expected_pidwatch_val |= (uint64_t)child_pid;

	/*
	 * We only reach here if parent successfully spawned child process.
	 */
	FUNC4("  spawned child_pid[%d] with memlimit %s (%d)MB\n",
	    child_pid, memlimit_str, active_limit_mb);

	/*
	 * Set the kernel's pidwatch to look for the child.
	 */
	(void)FUNC14((pid_t)0);
	(void)FUNC14(child_pid);

	/*
	 * Let the child run and wait for it to finish.
	 */
	FUNC18(child_pid, &child_status, &ru);
	FUNC4("Child exited with max_rss of %ld", ru.ru_maxrss);

	/*
	 * Retrieve the kernel's pidwatch value. This should now indicate
	 * if the corpse was allowed or not.
	 */
	kernel_pidwatch_val = FUNC11();
	(void)FUNC14((pid_t)0);

	/*
	 * If the child died abnormally, the test is invalid.
	 */
	if (!FUNC7(child_status)) {
		if (FUNC8(child_status)) {
			/* jetsam kills a process with SIGKILL */
			if (FUNC9(child_status) == SIGKILL)
				FUNC4("Child appears to have been a jetsam victim");
			FUNC5("Child terminated by signal %d test result invalid", FUNC9(child_status));
		}
		FUNC5("child did not exit normally (status=%d) test result invalid", child_status);
	}

	/*
	 * We don't expect the child to exit for any other reason than success
	 */
	exit_val = (enum child_exits)FUNC6(child_status);
	T_QUIET; FUNC0(exit_val, NORMAL_EXIT, "child exit due to: %s", 
	    (0 < exit_val && exit_val < NUM_CHILD_EXIT) ? child_exit_why[exit_val] : "unknown");

	/*
	 * If the kernel aborted generating a corpse for other reasons, the test is invalid.
	 */
	if (kernel_pidwatch_val == -1ull) {
		FUNC5("corpse generation was aborted by kernel");
	}

	/*
	 * We should always have made it through the vm_map_fork() checks in the kernel for this test.
	 */
	T_QUIET; FUNC1(kernel_pidwatch_val, (uint64_t)child_pid, "child didn't trigger corpse generation");

	FUNC3(kernel_pidwatch_val, expected_pidwatch_val, "kernel value 0x%llx - expected 0x%llx",
	    kernel_pidwatch_val, expected_pidwatch_val);
}
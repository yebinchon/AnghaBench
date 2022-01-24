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
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  environ ; 
 int FUNC3 (int*,char* const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  run_sleep_tests ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 
 int FUNC5 (int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(int for_secs) {
	if(!run_sleep_tests) return 0;

	// sleep for 1 seconds each iteration
	char buf[10];
	FUNC4(buf, 10, "%d", for_secs);

	FUNC2("Sleepeing for %s seconds...", buf);

	int spawn_ret, pid;
	char *const pmset1_args[] = {"/usr/bin/pmset", "relative", "wake", buf, NULL};
	FUNC1((spawn_ret = FUNC3(&pid, pmset1_args[0], NULL, NULL, pmset1_args, environ)), NULL);
	
	FUNC0(FUNC5(pid, &spawn_ret, 0), pid, NULL);
	FUNC0(spawn_ret, 0, NULL);

	char *const pmset2_args[] = {"/usr/bin/pmset", "sleepnow", NULL};
	FUNC1((spawn_ret = FUNC3(&pid, pmset2_args[0], NULL, NULL, pmset2_args, environ)), NULL);
	
	FUNC0(FUNC5(pid, &spawn_ret, 0), pid, NULL);
	FUNC0(spawn_ret, 0, NULL);

	return 0;
}
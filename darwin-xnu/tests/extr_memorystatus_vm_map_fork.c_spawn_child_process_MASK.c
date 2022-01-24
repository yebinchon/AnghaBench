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
typedef  int /*<<< orphan*/  posix_spawnattr_t ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  POSIX_SPAWN_START_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  environ ; 
 int FUNC1 (int /*<<< orphan*/ *,char* const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char* const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,short,int,int,int) ; 

__attribute__((used)) static pid_t
FUNC5(
	char * const executable,
	char * const memlimit,
	short flags,
	int priority,
	int active_limit_mb,
	int inactive_limit_mb)
{
	posix_spawnattr_t spawn_attrs;
	int err;
	pid_t child_pid;
	char * const argv_child[] = { executable, "-n", "child_process", "--", memlimit, NULL };

	err = FUNC2(&spawn_attrs);
	T_QUIET; FUNC0(err, "  posix_spawnattr_init() failed");

	err = FUNC3(&spawn_attrs, POSIX_SPAWN_START_SUSPENDED);
	T_QUIET; FUNC0(err, "  posix_spawnattr_setflags() failed");

	err = FUNC4(&spawn_attrs, flags, priority, active_limit_mb, inactive_limit_mb);
	T_QUIET; FUNC0(err, "  posix_spawnattr_setjetsam_ext() failed");

	err = FUNC1(&child_pid, executable, NULL, &spawn_attrs, argv_child, environ);
	T_QUIET; FUNC0(err, "  posix_spawn() failed");

	return child_pid;
}
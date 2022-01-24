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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  posix_spawnattr_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  POSIX_SPAWN_PROC_TYPE_APP_DEFAULT ; 
 int /*<<< orphan*/  POSIX_SPAWN_SETEXEC ; 
 int FUNC0 (char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**,char**) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(int argc, char *argv[])
{
	int ret;
	posix_spawnattr_t attr;
	extern char **environ;
	char *new_argv[argc + 1 + 1 /* NULL */];
	int i;
	char prog[PATH_MAX];
	uint32_t prog_size = PATH_MAX;

	ret = FUNC0(prog, &prog_size);
	if (ret) FUNC1(EX_OSERR, "_NSGetExecutablePath");

	for (i=0; i < argc; i++) {
		new_argv[i] = argv[i];
	}

	new_argv[i]   = "--switched_apptype";
	new_argv[i+1] = NULL;

	ret = FUNC4(&attr);
	if (ret) FUNC2(EX_OSERR, ret, "posix_spawnattr_init");

	ret = FUNC5(&attr, POSIX_SPAWN_SETEXEC);
	if (ret) FUNC2(EX_OSERR, ret, "posix_spawnattr_setflags");

	ret = FUNC6(&attr, POSIX_SPAWN_PROC_TYPE_APP_DEFAULT);
	if (ret) FUNC2(EX_OSERR, ret, "posix_spawnattr_setprocesstype_np");

	ret = FUNC3(NULL, prog, NULL, &attr, new_argv, environ);
	if (ret) FUNC2(EX_OSERR, ret, "posix_spawn");
}
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
typedef  int /*<<< orphan*/  exe ;
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 () ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 char* UNIX_ARG_EXIT ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int) ; 
 char** FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char**) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

bool FUNC16()
{
	UINT num = 10, i;
	UINT64 s = FUNC6();
	UINT64 t = FUNC6();

	for (i = 0;i < num;i++)
	{
		UINT64 q = FUNC6();
		if (t > q)
		{
			FUNC3("Tick64 #1 Failed.\n");
			return false;
		}

		t = q;

		FUNC4(100);
	}

	t = (FUNC6() - s);
	if (t <= 500 || t >= 2000)
	{
		FUNC3("Tick64 #2 Failed.\n");
		return false;
	}
	else if (false)
	{
		UINT64 tick1 = FUNC6();
		UINT64 time1;
		UINT64 time2;

		FUNC4(1000);

		time2 = FUNC2();
		time1 = FUNC5(FUNC7(tick1));

		if (time2 > time1)
		{
			s = time2 - time1;
		}
		else
		{
			s = time1 - time2;
		}

		if (s <= 500 || s >= 2000)
		{
			FUNC3("TickToTime Failed.\n");
			return false;
		}
	}

#ifdef	OS_UNIX
	{
		// Test of child process
		UINT pid;
		char exe[MAX_SIZE];

		GetExeName(exe, sizeof(exe));

		pid = fork();

		if (pid == -1)
		{
			Print("fork Failed.\n");
			return false;
		}

		if (pid == 0)
		{
			char *param = UNIX_ARG_EXIT;
			char **args;

			args = ZeroMalloc(sizeof(char *) * 3);
			args[0] = exe;
			args[1] = param;
			args[2] = NULL;

			setsid();

			// Close the standard I/O
			UnixCloseIO();

			// Stop unwanted signals
			signal(SIGHUP, SIG_IGN);

			execvp(exe, args);
			AbortExit();
		}
		else
		{
			int status = 0, ret;

			// Wait for the termination of the child process
			ret = waitpid(pid, &status, 0);

			if (WIFEXITED(status) == 0)
			{
				// Aborted
				Print("waitpid Failed: 0x%x\n", ret);
				return false;
			}
		}
	}
#endif	// OS_UNIX

	return true;
}
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
typedef  int PID ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,char* const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (int*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 

PID FUNC7(const char* path, char* const parameter[], int fd[] )
{
#ifdef OS_WIN32
	// not implemented
	return -1;
#else // OS_WIN32
	// UNIX
	int fds[2][2];
	PID pid;

	if (path == NULL || parameter == NULL || fd == NULL)
	{
		return (PID)-1;
	}

	if (FUNC6(fds[0]) != 0)
	{
		return (PID)-1;
	}

	if (FUNC6(fds[1]) != 0)
	{
		FUNC1(fds[0][0]);
		FUNC1(fds[0][1]);

		return (PID)-1;
	}

	pid = FUNC5();
	if (pid == (PID)0) {
		int iError;

		FUNC1(fds[0][1]);
		FUNC1(fds[1][0]);

		if (FUNC2(fds[0][0], FUNC4(stdin)) < 0 || FUNC2(fds[1][1], FUNC4(stdout)) < 0 )
		{
			FUNC1(fds[0][0]);
			FUNC1(fds[1][1]);

			FUNC0(EXIT_FAILURE);
		}

		iError = FUNC3(path, parameter);

		// We should never come here 
		FUNC1(fds[0][0]);
		FUNC1(fds[1][1]);

		FUNC0(iError);
	}
	else if (pid > (PID)0)
	{
		FUNC1(fds[0][0]);
		FUNC1(fds[1][1]);

		fd[0] = fds[1][0];
		fd[1] = fds[0][1];

		return pid;
	}
	else
	{
		FUNC1(fds[0][0]);
		FUNC1(fds[1][1]);

		FUNC1(fds[0][1]);
		FUNC1(fds[1][0]);

		return -1;
	}
#endif // OS_WIN32
}
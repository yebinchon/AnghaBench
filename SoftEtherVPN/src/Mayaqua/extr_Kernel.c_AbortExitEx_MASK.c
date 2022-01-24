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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_CORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void FUNC8(char *msg)
{
	FILE *f;
	// Validate arguments
	if (msg == NULL)
	{
		msg = "Unknown Error";
	}

	f = FUNC4("abort_error_log.txt", "w");
	if (f != NULL)
	{
		FUNC6(msg, 1, FUNC7(msg), f);
		FUNC3(f);
	}

	FUNC5("Fatal Error: ", stdout);
	FUNC5(msg, stdout);
	FUNC5("\r\n", stdout);

#ifdef	OS_WIN32
	_exit(1);
#else	// OS_WIN32

#ifdef	RLIMIT_CORE
	UnixSetResourceLimit(RLIMIT_CORE, 0);
#endif	// RLIMIT_CORE

	FUNC2();
#endif	// OS_WIN32
}
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 scalar_t__ g_debug ; 
 scalar_t__ g_memcheck ; 
 scalar_t__ init_mayaqua_counter ; 
 int /*<<< orphan*/ * tick_manual_lock ; 

void FUNC21()
{
	if ((--init_mayaqua_counter) > 0)
	{
		return;
	}

	// Release of Private IP File
	FUNC8();

	// Release of Probe
	FUNC9();

	// Delete the table
	FUNC12();

	// Release of security token module
	FUNC10();

	// Release of the operating system specific module
#ifdef	OS_WIN32
	MsFree();
#endif	// OS_WIN32

	// Release of OS information
	FUNC7();

	// Release of HamCore file system
	FUNC4();

	// Release of the command line string
	FUNC1();

	// Release of the command line token
	FUNC2();

	// Release of network communication module
	FUNC6();

	// Release of real-time clock
	FUNC14();

	// Release of the string library
	FUNC11();

	// Release of thread pool
	FUNC13();

	// Release of crypt library
	FUNC3();

	if (FUNC16())
	{
		// Show the kernel status
		if (g_debug)
		{
			FUNC20();
		}

		// Display the debug information
		if (g_memcheck)
		{
			FUNC19();
		}

		// Release the tracking
		FUNC15();
	}

	// Release of the kernel status
	FUNC5();

	FUNC0(tick_manual_lock);
	tick_manual_lock = NULL;

	// Release of OS
	FUNC18();
}
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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

void
FUNC12(void)
{
	/* Now with VM up, switch to dynamically allocated cpu data */
	FUNC1();

        /* Ensure panic buffer is initialized. */
        FUNC5();

	/*
	 * Display CPU identification
	 */
	FUNC2("CPU identification");
	FUNC4("CPU features");
	FUNC3("CPU extended features");

        /*
         * Initialize EFI runtime services.
         */
        FUNC6();

	FUNC11();

	/*
	 * Set up to use floating point.
	 */
	FUNC7();

	/*
	 * Configure clock devices.
	 */
	FUNC0();

#if CONFIG_MTRR
	/*
	 * Initialize MTRR from boot processor.
	 */
	mtrr_init();

	/*
	 * Set up PAT for boot processor.
	 */
	pat_init();
#endif

	/*
	 * Free lowmem pages and complete other setup
	 */
	FUNC10();
}
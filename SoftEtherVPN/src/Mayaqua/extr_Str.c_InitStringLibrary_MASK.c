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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  token_lock ; 

void FUNC5()
{
	// Create a lock for token
	token_lock = FUNC3();

	// Initialization of the International Library
	FUNC2();

	// Operation check
	if (FUNC1() == false)
	{
#ifdef	OS_WIN32
		Alert("String Library Init Failed.\r\nPlease check your locale settings.", NULL);
#else	// OS_WIN32
		FUNC0("String Library Init Failed.\r\nPlease check your locale settings and iconv() libraries.", NULL);
#endif	// OS_WIN32
		FUNC4(0);
	}
}
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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int KillCDThread ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ WAIT_TIMEOUT ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cd_cs ; 
 scalar_t__ hCDROM ; 
 scalar_t__ thread_handle ; 

void FUNC4() {
	if (thread_handle != INVALID_HANDLE_VALUE)                               
	{
		// Set the flag telling it to stop
		KillCDThread=1;
		if (FUNC3(thread_handle,INFINITE) == WAIT_TIMEOUT)      
		{
			// Couldn't close thread cleanly
			FUNC2(thread_handle,0);
		}
		FUNC0(thread_handle);
		thread_handle = INVALID_HANDLE_VALUE;
	}
	FUNC1(&cd_cs);

	FUNC0(hCDROM);
}
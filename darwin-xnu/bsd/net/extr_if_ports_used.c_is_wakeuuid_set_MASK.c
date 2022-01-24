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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC2(void)
{
	/*
	 * IOPMCopySleepWakeUUIDKey() tells if SleepWakeUUID is currently set
	 * That means we are currently in a sleep/wake cycle
	 */
	return (FUNC1(NULL) || FUNC0(NULL, 0));
}
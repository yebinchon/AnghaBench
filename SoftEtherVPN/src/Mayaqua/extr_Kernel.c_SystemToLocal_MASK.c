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
typedef  scalar_t__ UINT64 ;
typedef  int /*<<< orphan*/  SYSTEMTIME ;
typedef  scalar_t__ INT64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC3(SYSTEMTIME *local, SYSTEMTIME *system)
{
	UINT64 sec64;
	// Validate arguments
	if (local == NULL || system == NULL)
	{
		return;
	}

	sec64 = (UINT64)((INT64)FUNC1(system) + FUNC0(system, false));
	FUNC2(local, sec64);
}
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
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int TRUE ; 

int FUNC2(int run_monitor)
{
	FUNC0();

	if (run_monitor && FUNC1())
		return TRUE;

	return FALSE;
}
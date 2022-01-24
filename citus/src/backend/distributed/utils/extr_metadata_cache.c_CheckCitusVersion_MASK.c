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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  EnableVersionChecks ; 
 int citusVersionKnownCompatible ; 

bool
FUNC3(int elevel)
{
	if (citusVersionKnownCompatible ||
		!FUNC2() ||
		!EnableVersionChecks)
	{
		return true;
	}

	if (FUNC0(elevel) && FUNC1(elevel))
	{
		citusVersionKnownCompatible = true;
		return true;
	}
	else
	{
		return false;
	}
}
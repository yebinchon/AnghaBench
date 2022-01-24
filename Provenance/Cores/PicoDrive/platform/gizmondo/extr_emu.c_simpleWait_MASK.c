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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(DWORD until)
{
	DWORD tval;
	int diff;

	tval = FUNC0();
	diff = (int)until - (int)tval;
	if (diff >= 2)
		FUNC1(diff - 1);

	while ((tval = FUNC0()) < until && until - tval < 512) // some simple overflow detection
		FUNC2(1024*2);
}
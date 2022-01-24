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
 unsigned int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(unsigned int us_to)
{
	unsigned int now;

	FUNC1(1024);
	now = FUNC0();

	while ((signed int)(us_to - now) > 512)
	{
		FUNC1(1024);
		now = FUNC0();
	}
}
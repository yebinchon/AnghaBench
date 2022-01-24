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
 int EBUSY ; 
 scalar_t__ KPERF_SAMPLING_ON ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int lightweight_pet ; 

int
FUNC2(int val)
{
	if (FUNC1() == KPERF_SAMPLING_ON) {
		return EBUSY;
	}

	lightweight_pet = (val == 1);
	FUNC0();

	return 0;
}
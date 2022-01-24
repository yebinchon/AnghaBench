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
 scalar_t__ Sound_enabled ; 
 scalar_t__ TRUE ; 
 scalar_t__ paused ; 

void FUNC1(void)
{
	if (Sound_enabled && !paused) {
		/* stop audio output */
		FUNC0();
		paused = TRUE;
	}
}
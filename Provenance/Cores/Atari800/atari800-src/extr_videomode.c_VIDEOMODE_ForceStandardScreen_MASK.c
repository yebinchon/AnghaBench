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
typedef  scalar_t__ VIDEOMODE_MODE_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int force_standard_screen ; 

void FUNC2(int value)
{
	VIDEOMODE_MODE_t prev_mode = FUNC0();
	force_standard_screen = value;
	if (prev_mode != FUNC0())
		FUNC1();
}
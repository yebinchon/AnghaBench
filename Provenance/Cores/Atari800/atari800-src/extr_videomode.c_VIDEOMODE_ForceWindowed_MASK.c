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
 int VIDEOMODE_windowed ; 
 int force_windowed ; 

void FUNC1(int value)
{
	int prev_windowed = VIDEOMODE_windowed || force_windowed;
	force_windowed = value;
	if (prev_windowed != VIDEOMODE_windowed || force_windowed)
		FUNC0();
}
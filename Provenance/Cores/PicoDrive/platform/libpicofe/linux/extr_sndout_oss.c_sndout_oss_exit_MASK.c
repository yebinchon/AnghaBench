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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int mixerdev ; 
 int sounddev ; 

void FUNC1(void)
{
	if (sounddev >= 0) FUNC0(sounddev); sounddev = -1;
	if (mixerdev >= 0) FUNC0(mixerdev); mixerdev = -1;
}
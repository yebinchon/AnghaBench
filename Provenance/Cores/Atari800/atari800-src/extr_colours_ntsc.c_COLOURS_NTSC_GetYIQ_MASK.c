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
 int /*<<< orphan*/  FUNC0 (double*,double const,double) ; 

void FUNC1(double yiq_table[768], const double start_angle)
{
	/* Set the generated palette's saturation to 0.0, because NTSC_FILTER
	   applies the saturation setting internally. */
	FUNC0(yiq_table, start_angle, 0.0);
}
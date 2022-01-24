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
 int NSEC_PER_USEC ; 
 int /*<<< orphan*/  delay_spin_threshold ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 

void
FUNC1(int threshold_us)
{
	FUNC0(threshold_us * NSEC_PER_USEC, &delay_spin_threshold);
}
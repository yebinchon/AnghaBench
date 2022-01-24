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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

void
FUNC2(const char *label, double avg, double max, double min, double stddev)
{
	FUNC0("Max %s jitter: %.1lf%%\n", label, max * 100);
	FUNC0("Min %s jitter: %.1lf%%\n", label, min * 100);
	FUNC0("Avg %s jitter: %.1lf%%\n", label, avg * 100);
	FUNC0("Stddev: %.1lf%%\n", stddev * 100);
	FUNC1('\n');	
}
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
typedef  int /*<<< orphan*/  chassis_stats_t ;

/* Variables and functions */
 int /*<<< orphan*/ * chassis_global_stats ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(chassis_stats_t *stats) {
	if (!stats) return;
	
	if (stats == chassis_global_stats) {
		FUNC1(stats);
		chassis_global_stats = NULL;
	} else {
		/* there should only be one glbal chassis stats struct at any given time */
		FUNC0();
	}
}
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
typedef  int boolean_t ;

/* Variables and functions */
 scalar_t__ cpu_idle_count ; 
 int FUNC0 () ; 
 scalar_t__ real_ncpus ; 

void FUNC1(boolean_t *icp, boolean_t *pidlep) {
	*icp = FUNC0();
	*pidlep = (cpu_idle_count == real_ncpus);
}
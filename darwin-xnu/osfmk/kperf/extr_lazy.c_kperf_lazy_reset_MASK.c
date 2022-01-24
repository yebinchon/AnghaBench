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
 scalar_t__ kperf_lazy_cpu_action ; 
 scalar_t__ kperf_lazy_cpu_time_threshold ; 
 scalar_t__ kperf_lazy_wait_action ; 
 scalar_t__ kperf_lazy_wait_time_threshold ; 
 int /*<<< orphan*/  FUNC0 () ; 

void
FUNC1(void)
{
	kperf_lazy_wait_action = 0;
	kperf_lazy_wait_time_threshold = 0;
	kperf_lazy_cpu_action = 0;
	kperf_lazy_cpu_time_threshold = 0;
	FUNC0();
}
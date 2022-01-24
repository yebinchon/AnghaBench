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
typedef  scalar_t__ dt_stat_time_t ;
typedef  int /*<<< orphan*/  dt_stat_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static dt_stat_time_t
FUNC3(int proc_wired_mem, int nthreads)
{
	dt_stat_time_t dst = FUNC2("time");
	FUNC0(dst, "created time statistic");

	FUNC1((dt_stat_t)dst, "proc_threads", nthreads);
	FUNC1((dt_stat_t)dst, "proc_wired_mem", proc_wired_mem);;

	return dst;
}
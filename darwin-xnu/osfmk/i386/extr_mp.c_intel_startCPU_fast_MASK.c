#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ kern_return_t ;
struct TYPE_2__ {scalar_t__ cpu_running; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  FUNC0 (int,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ KERN_FAILURE ; 
 scalar_t__ KERN_SUCCESS ; 
 int TRACE_MP_CPU_FAST_START ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 scalar_t__ FUNC5 (int) ; 

kern_return_t
FUNC6(int slot_num)
{
	kern_return_t	rc;

	/*
	 * Try to perform a fast restart
	 */
	rc = FUNC5(slot_num);
	if (rc != KERN_SUCCESS)
		/*
		 * The CPU was not eligible for a fast restart.
		 */
		return(rc);

	FUNC0(
		TRACE_MP_CPU_FAST_START | DBG_FUNC_START,
		slot_num, 0, 0, 0, 0);

	/*
	 * Wait until the CPU is back online.
	 */
	FUNC2();
    
	/*
	 * We use short pauses (1us) for low latency.  30,000 iterations is
	 * longer than a full restart would require so it should be more
	 * than long enough.
	 */

	FUNC4(slot_num, 30000, 1);
	FUNC3();

	FUNC0(
		TRACE_MP_CPU_FAST_START | DBG_FUNC_END,
		slot_num, FUNC1(slot_num)->cpu_running, 0, 0, 0);

	/*
	 * Check to make sure that the CPU is really running.  If not,
	 * go through the slow path.
	 */
	if (FUNC1(slot_num)->cpu_running)
		return(KERN_SUCCESS);
	else
		return(KERN_FAILURE);
}
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
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ RAW_file_offset ; 
 scalar_t__ RAW_file_written ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(boolean_t early_trace)
{
	int ret = 0;

	/*
	 * Disable trace collecting
	 * First make sure we're not in
	 * the middle of cutting a trace
	 */
	FUNC4();

	/*
	 * make sure the SLOW_NOLOG is seen
	 * by everyone that might be trying
	 * to cut a trace..
	 */
	FUNC0(100);

	FUNC1();

	FUNC3();
	ret = FUNC2(early_trace);

	RAW_file_offset = 0;
	RAW_file_written = 0;

	return(ret);
}
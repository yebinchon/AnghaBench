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
typedef  scalar_t__ uint64_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int FALSE ; 
 int LockTimeOutTSC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ disable_serial_output ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static boolean_t
FUNC3(uint64_t tsc_start)
{
	uint64_t	tsc_timeout;

	FUNC0();
	if (FUNC1())
		return FALSE;

	/*
	 * The timeout is 4 * the spinlock timeout period
	 * unless we have serial console printing (kprintf) enabled
	 * in which case we allow an even greater margin.
	 */
	tsc_timeout = disable_serial_output ? LockTimeOutTSC << 2
					    : LockTimeOutTSC << 4;
	return  (FUNC2() > tsc_start + tsc_timeout);
}
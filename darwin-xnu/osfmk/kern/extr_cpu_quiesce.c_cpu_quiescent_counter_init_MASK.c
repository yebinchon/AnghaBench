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
 int CPU_CHECKIN_MASK ; 
 int /*<<< orphan*/  CPU_CHECKIN_MIN_INTERVAL_US ; 
 int CPU_EXPECTED_MASK ; 
 int /*<<< orphan*/  MAX_CPUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(void)
{
	FUNC0(CPU_CHECKIN_MASK & FUNC1(MAX_CPUS));
	FUNC0(CPU_EXPECTED_MASK & FUNC2(MAX_CPUS));
	FUNC0((CPU_CHECKIN_MASK & FUNC2(MAX_CPUS)) == 0);
	FUNC0((CPU_EXPECTED_MASK & FUNC1(MAX_CPUS)) == 0);

	FUNC3(CPU_CHECKIN_MIN_INTERVAL_US);
}
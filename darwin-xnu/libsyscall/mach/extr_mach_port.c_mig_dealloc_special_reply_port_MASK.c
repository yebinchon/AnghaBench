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
typedef  scalar_t__ mach_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  MACH_PORT_NULL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  THREAD_SPECIAL_REPLY_PORT_ALL ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC6(mach_port_t migport)
{
	mach_port_t srp = FUNC1();
	if (FUNC0(srp)) {
		FUNC5(srp, THREAD_SPECIAL_REPLY_PORT_ALL);
		if (migport != srp) {
			FUNC3(FUNC4(), migport);
		}
		FUNC2(MACH_PORT_NULL);
	}
}
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
typedef  int /*<<< orphan*/  mach_port_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_PORT_DEAD ; 
 int /*<<< orphan*/  MACH_PORT_RIGHT_SEND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

kern_return_t
FUNC5(mach_port_t *special_reply_port)
{
	mach_port_t srp;
	boolean_t link_broken;
	kern_return_t kr;

	*special_reply_port = MACH_PORT_DEAD;

	srp = FUNC4();

	kr = FUNC2(FUNC3(), srp, MACH_PORT_RIGHT_SEND, 1);

	if (kr != KERN_SUCCESS) {
		return kr;
	}

	kr = FUNC0(FUNC3(), srp, &link_broken);
	if (kr != KERN_SUCCESS) {
		FUNC1(FUNC3(), srp);
		return kr;
	}

	*special_reply_port = srp;

	return kr;
}
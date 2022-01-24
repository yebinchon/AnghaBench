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
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

kern_return_t
FUNC3(mach_port_t srp, boolean_t* in_effect)
{
	kern_return_t kr;
	boolean_t link_broken = TRUE;

	kr = FUNC0(FUNC2(), srp, &link_broken);

	/*
	 * We return if the sync IPC priority inversion avoidance facility took
	 * effect, so if the link was broken it didn't take effect.
	 * Flip the return.
	 */
	*in_effect = !link_broken;

	FUNC1(FUNC2(), srp);

	return kr;
}
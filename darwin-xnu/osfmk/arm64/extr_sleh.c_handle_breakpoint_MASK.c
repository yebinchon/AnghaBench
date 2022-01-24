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
typedef  int mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  mach_exception_data_type_t ;
typedef  int /*<<< orphan*/  exception_type_t ;
typedef  int /*<<< orphan*/  arm_saved_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXC_ARM_BREAKPOINT ; 
 int /*<<< orphan*/  EXC_BREAKPOINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(arm_saved_state_t *state)
{
	exception_type_t 			exception = EXC_BREAKPOINT;
	mach_exception_data_type_t 	codes[2] = {EXC_ARM_BREAKPOINT};
	mach_msg_type_number_t 		numcodes = 2;

	codes[1] = FUNC2(state);
	FUNC1(exception, codes, numcodes);
	FUNC0(0); /* NOTREACHED */
}
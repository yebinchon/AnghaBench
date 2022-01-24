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
typedef  scalar_t__ uint32_t ;
typedef  int mach_msg_type_number_t ;
typedef  scalar_t__ mach_exception_data_type_t ;
typedef  int /*<<< orphan*/  instr ;
typedef  int /*<<< orphan*/  exception_type_t ;
typedef  int /*<<< orphan*/  arm_saved_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ EXC_ARM_UNDEFINED ; 
 int /*<<< orphan*/  EXC_BAD_INSTRUCTION ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(arm_saved_state_t *state, uint32_t esr)
{
	exception_type_t           exception = EXC_BAD_INSTRUCTION;
	mach_exception_data_type_t codes[2] = {EXC_ARM_UNDEFINED};
	mach_msg_type_number_t     numcodes = 2;
	uint32_t                   instr = 0;

	if (FUNC1(FUNC3(state))) {
		FUNC5("ESR (0x%x) for SIMD trap from userland, actually came from kernel?", esr);
	}

	FUNC0(FUNC4(state), (char *)&instr, sizeof(instr));
	codes[1] = instr;

	FUNC2(exception, codes, numcodes);
}
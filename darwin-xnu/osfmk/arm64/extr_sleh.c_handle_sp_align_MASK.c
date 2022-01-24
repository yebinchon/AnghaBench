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
 int /*<<< orphan*/  EXC_ARM_SP_ALIGN ; 
 int /*<<< orphan*/  EXC_BAD_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(arm_saved_state_t *ss)
{
	exception_type_t exc;
	mach_exception_data_type_t codes[2];
	mach_msg_type_number_t numcodes = 2;

	if (!FUNC0(FUNC3(ss))) {
		FUNC5("SP alignment exception from kernel.", ss);
	}

	exc = EXC_BAD_ACCESS;
	codes[0] = EXC_ARM_SP_ALIGN;
	codes[1] = FUNC4(ss);

	FUNC2(exc, codes, numcodes);
	FUNC1(0); /* NOTREACHED */
}
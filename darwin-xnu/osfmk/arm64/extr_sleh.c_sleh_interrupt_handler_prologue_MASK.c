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
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  arm_saved_state_t ;

/* Variables and functions */
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  DBG_MACH_EXCP_INTR ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ telemetry_needs_record ; 

__attribute__((used)) static void
FUNC7(arm_saved_state_t *state, unsigned int type)
{
	uint64_t     is_user = FUNC2(FUNC4(state));

	uint64_t pc = is_user ? FUNC5(state) :
	              FUNC3(FUNC5(state));

	FUNC0(FUNC1(DBG_MACH_EXCP_INTR, 0) | DBG_FUNC_START,
	             0, pc, is_user, type);

#if CONFIG_TELEMETRY
	if (telemetry_needs_record) {
		telemetry_mark_curthread((boolean_t)is_user, FALSE);
	}
#endif /* CONFIG_TELEMETRY */
}
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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  thread_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  AST_TELEMETRY_KERNEL ; 
 int /*<<< orphan*/  AST_TELEMETRY_PMI ; 
 int /*<<< orphan*/  AST_TELEMETRY_USER ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ telemetry_needs_record ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(boolean_t interrupted_userspace, boolean_t pmi)
{
	uint32_t ast_bits = 0;
	thread_t thread = FUNC1();

	/*
	 * If telemetry isn't active for this thread, return and try
	 * again next time.
	 */
	if (FUNC2(thread) == FALSE) {
		return;
	}

	ast_bits |= (interrupted_userspace ? AST_TELEMETRY_USER : AST_TELEMETRY_KERNEL);
	if (pmi) {
		ast_bits |= AST_TELEMETRY_PMI;
	}

	telemetry_needs_record = FALSE;
	FUNC3(thread, ast_bits);
	FUNC0(thread);
}
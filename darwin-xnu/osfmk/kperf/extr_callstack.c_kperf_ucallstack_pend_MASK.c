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
struct kperf_context {int /*<<< orphan*/  cur_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  T_KPERF_AST_CALLSTACK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(struct kperf_context * context, uint32_t depth)
{
	int did_pend = FUNC0(context->cur_thread, T_KPERF_AST_CALLSTACK);
	FUNC1(context->cur_thread, depth);

	return did_pend;
}
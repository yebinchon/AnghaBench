#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  int ast_t ;
struct TYPE_4__ {int state; } ;

/* Variables and functions */
 int AST_PREEMPT ; 
 scalar_t__ AST_PREEMPTION ; 
 scalar_t__ AST_URGENT ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int TH_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  c_ast_taken_block ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 

void
FUNC9(void)
{
	FUNC0(FUNC6() == FALSE);

	thread_t thread = FUNC5();

	/* Idle threads handle preemption themselves */
	if ((thread->state & TH_IDLE)) {
		FUNC2(AST_PREEMPTION);
		return;
	}

	/*
	 * It's possible for this to be called after AST_URGENT
	 * has already been handled, due to races in enable_preemption
	 */
	if (FUNC3(AST_URGENT) != AST_URGENT)
		return;

	/*
	 * Don't preempt if the thread is already preparing to block.
	 * TODO: the thread can cheese this with clear_wait()
	 */
	if (FUNC8(thread) == FALSE) {
		/* Consume AST_URGENT or the interrupt will call us again */
		FUNC1(AST_URGENT);
		return;
	}

	/* TODO: Should we csw_check again to notice if conditions have changed? */

	ast_t urgent_reason = FUNC1(AST_PREEMPTION);

	FUNC0(urgent_reason & AST_PREEMPT);

	FUNC4(c_ast_taken_block++);

	FUNC7(THREAD_CONTINUE_NULL, NULL, urgent_reason);

	FUNC0(FUNC6() == FALSE);
}
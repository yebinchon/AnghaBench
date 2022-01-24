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
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  processor_t ;
typedef  int ast_t ;

/* Variables and functions */
 int AST_NONE ; 
 int AST_PREEMPT ; 
 int /*<<< orphan*/  AST_YIELD ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10()
{
	/* 
	 * ast_pending() should ideally be called with interrupts disabled, but 
	 * the check here is fine because csw_check() will do the right thing.
	 */
	ast_t *pending_ast = FUNC1();
	ast_t ast = AST_NONE;
	processor_t p;

	if (*pending_ast & AST_PREEMPT) {
		thread_t self = FUNC4();

		spl_t s = FUNC5();

		p = FUNC3();
		FUNC8(self);
		ast = FUNC2(p, AST_YIELD);
		FUNC0(ast);
		FUNC9(self);

		if (ast != AST_NONE) {
			(void)FUNC7(THREAD_CONTINUE_NULL,	NULL, ast);
		}

		FUNC6(s);
	}
}
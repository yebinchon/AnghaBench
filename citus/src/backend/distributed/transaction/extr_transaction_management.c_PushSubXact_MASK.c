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
struct TYPE_4__ {int /*<<< orphan*/  setLocalCmds; int /*<<< orphan*/  subId; } ;
typedef  TYPE_1__ SubXactContext ;
typedef  int /*<<< orphan*/  SubTransactionId ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  CurTransactionContext ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  activeSetStmts ; 
 int /*<<< orphan*/  activeSubXactContexts ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(SubTransactionId subId)
{
	MemoryContext old_context = FUNC0(CurTransactionContext);

	/* save provided subId as well as propagated SET LOCAL stmts */
	SubXactContext *state = FUNC3(sizeof(SubXactContext));
	state->subId = subId;
	state->setLocalCmds = activeSetStmts;

	/* append to list and reset active set stmts for upcoming sub-xact */
	activeSubXactContexts = FUNC1(state, activeSubXactContexts);
	activeSetStmts = FUNC2();

	FUNC0(old_context);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ pendingInstances; int /*<<< orphan*/ * currentPruningInstance; } ;
struct TYPE_5__ {int /*<<< orphan*/ * continueAt; int /*<<< orphan*/  instance; } ;
typedef  int /*<<< orphan*/  PruningInstance ;
typedef  TYPE_1__ PendingPruningInstance ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_2__ ClauseWalkerContext ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4(Node *node, ClauseWalkerContext *context)
{
	/*
	 * Build initial list of prunable expressions.  As long as only,
	 * implicitly or explicitly, ANDed expressions are found, this perform a
	 * depth-first search.  When an ORed expression is found, the current
	 * PruningInstance is added to context->pruningInstances (once for each
	 * ORed expression), then the tree-traversal is continued without
	 * recursing.  Once at the top-level again, we'll process all pending
	 * expressions - that allows us to find all ANDed expressions, before
	 * recursing into an ORed expression.
	 */
	FUNC1(node, context);

	/*
	 * Process all pending instances.  While processing, new ones might be
	 * added to the list, so don't use foreach().
	 *
	 * Check the places in PruningInstanceWalker that push onto
	 * context->pendingInstances why construction of the PruningInstance might
	 * be pending.
	 *
	 * We copy the partial PruningInstance, and continue adding information by
	 * calling PrunableExpressionsWalker() on the copy, continuing at the the
	 * node stored in PendingPruningInstance->continueAt.
	 */
	while (context->pendingInstances != NIL)
	{
		PendingPruningInstance *instance =
			(PendingPruningInstance *) FUNC2(context->pendingInstances);
		PruningInstance *newPrune = FUNC0(instance->instance);

		context->pendingInstances = FUNC3(context->pendingInstances);

		context->currentPruningInstance = newPrune;
		FUNC1(instance->continueAt, context);
		context->currentPruningInstance = NULL;
	}
}
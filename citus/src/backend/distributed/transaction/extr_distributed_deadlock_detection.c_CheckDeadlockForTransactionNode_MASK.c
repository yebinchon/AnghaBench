#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int transactionVisited; } ;
typedef  TYPE_1__ TransactionNode ;
struct TYPE_10__ {int currentStackDepth; TYPE_1__* transactionNode; } ;
typedef  TYPE_2__ QueuedTransactionNode ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int const,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__** FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**) ; 

__attribute__((used)) static bool
FUNC7(TransactionNode *startingTransactionNode,
								int maxStackDepth,
								List **deadlockPath)
{
	List *toBeVisitedNodes = NIL;
	const int rootStackDepth = 0;
	TransactionNode **transactionNodeStack =
		FUNC5(maxStackDepth * sizeof(TransactionNode *));

	/*
	 * We keep transactionNodeStack to keep track of the deadlock paths. At this point,
	 * adjust the depth of the starting node and set the stack's first element with
	 * the starting node.
	 */
	transactionNodeStack[rootStackDepth] = startingTransactionNode;

	FUNC2(startingTransactionNode, rootStackDepth,
								&toBeVisitedNodes);

	/* traverse the graph and search for the deadlocks */
	while (toBeVisitedNodes != NIL)
	{
		int currentStackDepth;
		QueuedTransactionNode *queuedTransactionNode =
			(QueuedTransactionNode *) FUNC3(toBeVisitedNodes);
		TransactionNode *currentTransactionNode = queuedTransactionNode->transactionNode;

		toBeVisitedNodes = FUNC4(toBeVisitedNodes);

		/* cycle found, let the caller know about the cycle */
		if (currentTransactionNode == startingTransactionNode)
		{
			FUNC1(queuedTransactionNode, transactionNodeStack,
								  deadlockPath);

			FUNC6(transactionNodeStack);
			return true;
		}

		/* don't need to revisit the node again */
		if (currentTransactionNode->transactionVisited)
		{
			continue;
		}

		currentTransactionNode->transactionVisited = true;

		/* set the stack's corresponding element with the current node */
		currentStackDepth = queuedTransactionNode->currentStackDepth;
		FUNC0(currentStackDepth < maxStackDepth);
		transactionNodeStack[currentStackDepth] = currentTransactionNode;

		FUNC2(currentTransactionNode, currentStackDepth,
									&toBeVisitedNodes);
	}

	FUNC6(transactionNodeStack);
	return false;
}
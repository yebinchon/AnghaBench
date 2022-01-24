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
typedef  int /*<<< orphan*/  MultiUnaryNode ;
typedef  int /*<<< orphan*/  MultiNode ;
typedef  int /*<<< orphan*/  MultiExtendedOp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MultiCollect ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(MultiExtendedOp *originalNode, MultiExtendedOp *masterNode,
					 MultiExtendedOp *workerNode)
{
	MultiNode *parentNode = FUNC3((MultiNode *) originalNode);
	MultiNode *collectNode = FUNC1((MultiUnaryNode *) originalNode);
	MultiNode *collectChildNode = FUNC1((MultiUnaryNode *) collectNode);

	/* original node's child must be a collect node */
	FUNC0(FUNC2(collectNode, MultiCollect));
	FUNC0(FUNC5(parentNode));

	/* swap the original aggregate node with the master extended node */
	FUNC4((MultiUnaryNode *) parentNode, (MultiNode *) masterNode);
	FUNC4((MultiUnaryNode *) masterNode, (MultiNode *) collectNode);

	/* add the worker extended node below the collect node */
	FUNC4((MultiUnaryNode *) collectNode, (MultiNode *) workerNode);
	FUNC4((MultiUnaryNode *) workerNode, (MultiNode *) collectChildNode);

	/* clean up the original extended operator node */
	FUNC6(originalNode);
}
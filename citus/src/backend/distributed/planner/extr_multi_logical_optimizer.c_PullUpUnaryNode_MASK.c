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
struct TYPE_10__ {int /*<<< orphan*/ * leftChildNode; } ;
struct TYPE_9__ {int /*<<< orphan*/ * childNode; } ;
typedef  TYPE_1__ MultiUnaryNode ;
typedef  int /*<<< orphan*/  MultiNode ;
typedef  TYPE_2__ MultiBinaryNode ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(MultiUnaryNode *unaryNode)
{
	MultiNode *parentNode = FUNC1((MultiNode *) unaryNode);
	bool unaryParent = FUNC7(parentNode);
	bool binaryParent = FUNC0(parentNode);

	if (unaryParent)
	{
		/* pulling up a node is the same as pushing down the node's unary parent */
		MultiUnaryNode *unaryParentNode = (MultiUnaryNode *) parentNode;
		FUNC3(unaryParentNode, unaryNode);
	}
	else if (binaryParent)
	{
		MultiBinaryNode *binaryParentNode = (MultiBinaryNode *) parentNode;
		MultiNode *parentParentNode = FUNC1((MultiNode *) binaryParentNode);
		MultiNode *childNode = unaryNode->childNode;

		/* make the parent node point to the unary node's child node */
		if (binaryParentNode->leftChildNode == ((MultiNode *) unaryNode))
		{
			FUNC5(binaryParentNode, childNode);
		}
		else
		{
			FUNC6(binaryParentNode, childNode);
		}

		/* make the parent parent node point to the unary node */
		FUNC2(parentParentNode, parentNode, (MultiNode *) unaryNode);

		/* make the unary node point to the (old) parent node */
		FUNC4(unaryNode, parentNode);
	}
}
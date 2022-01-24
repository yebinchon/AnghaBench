#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * rightChildNode; int /*<<< orphan*/ * leftChildNode; } ;
struct TYPE_3__ {int /*<<< orphan*/ * childNode; } ;
typedef  TYPE_1__ MultiUnaryNode ;
typedef  int /*<<< orphan*/  MultiNode ;
typedef  TYPE_2__ MultiBinaryNode ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 
 int T_Invalid ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

List *
FUNC5(MultiNode *node, int type)
{
	List *nodeList = NIL;
	int nodeType = T_Invalid;

	/* terminal condition for recursion */
	if (node == NULL)
	{
		return NIL;
	}

	/* current node has expected node type */
	nodeType = FUNC1(node);
	if (nodeType == type)
	{
		nodeList = FUNC3(nodeList, node);
	}

	if (FUNC2(node))
	{
		MultiNode *childNode = ((MultiUnaryNode *) node)->childNode;
		List *childNodeList = FUNC5(childNode, type);

		nodeList = FUNC4(nodeList, childNodeList);
	}
	else if (FUNC0(node))
	{
		MultiNode *leftChildNode = ((MultiBinaryNode *) node)->leftChildNode;
		MultiNode *rightChildNode = ((MultiBinaryNode *) node)->rightChildNode;

		List *leftChildNodeList = FUNC5(leftChildNode, type);
		List *rightChildNodeList = FUNC5(rightChildNode, type);

		nodeList = FUNC4(nodeList, leftChildNodeList);
		nodeList = FUNC4(nodeList, rightChildNodeList);
	}

	return nodeList;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * leftChildNode; } ;
typedef  int /*<<< orphan*/  MultiUnaryNode ;
typedef  int /*<<< orphan*/  MultiTreeRoot ;
typedef  int /*<<< orphan*/  MultiNode ;
typedef  TYPE_1__ MultiBinaryNode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static MultiNode *
FUNC3(MultiTreeRoot *multiTree)
{
	MultiNode *currentNode = (MultiNode *) multiTree;
	MultiNode *leftChildNode = FUNC1((MultiUnaryNode *) multiTree);

	while (leftChildNode != NULL)
	{
		currentNode = leftChildNode;

		if (FUNC2(currentNode))
		{
			leftChildNode = FUNC1((MultiUnaryNode *) currentNode);
		}
		else if (FUNC0(currentNode))
		{
			MultiBinaryNode *binaryNode = (MultiBinaryNode *) currentNode;
			leftChildNode = binaryNode->leftChildNode;
		}
	}

	return currentNode;
}
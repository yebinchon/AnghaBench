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

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(MultiUnaryNode *currentNode, MultiUnaryNode *childNode)
{
	MultiNode *parentNode = FUNC1((MultiNode *) currentNode);
	MultiNode *childChildNode = FUNC0(childNode);

	/* current node's parent now points to the child node */
	FUNC2(parentNode, (MultiNode *) currentNode, (MultiNode *) childNode);

	/* current node's child becomes its parent */
	FUNC3(childNode, (MultiNode *) currentNode);

	/* current node points to the child node's child */
	FUNC3(currentNode, childChildNode);
}
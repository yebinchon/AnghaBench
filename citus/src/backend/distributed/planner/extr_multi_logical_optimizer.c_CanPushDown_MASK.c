#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * childNode; } ;
typedef  scalar_t__ PushDownStatus ;
typedef  TYPE_1__ MultiUnaryNode ;
typedef  int /*<<< orphan*/  MultiNode ;
typedef  int /*<<< orphan*/  MultiBinaryNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ PUSH_DOWN_INVALID_FIRST ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PushDownStatus
FUNC5(MultiUnaryNode *parentNode)
{
	PushDownStatus pushDownStatus = PUSH_DOWN_INVALID_FIRST;
	MultiNode *childNode = parentNode->childNode;
	bool unaryChild = FUNC4(childNode);
	bool binaryChild = FUNC1(childNode);

	if (unaryChild)
	{
		pushDownStatus = FUNC2(parentNode, (MultiUnaryNode *) childNode);
	}
	else if (binaryChild)
	{
		pushDownStatus = FUNC3(parentNode, (MultiBinaryNode *) childNode);
	}

	FUNC0(pushDownStatus != PUSH_DOWN_INVALID_FIRST);
	return pushDownStatus;
}
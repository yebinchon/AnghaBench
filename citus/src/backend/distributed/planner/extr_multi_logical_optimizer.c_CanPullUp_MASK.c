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
typedef  scalar_t__ PushDownStatus ;
typedef  scalar_t__ PullUpStatus ;
typedef  int /*<<< orphan*/  MultiUnaryNode ;
typedef  int /*<<< orphan*/  MultiNode ;
typedef  int /*<<< orphan*/  MultiBinaryNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ PULL_UP_INVALID_FIRST ; 
 scalar_t__ PULL_UP_NOT_VALID ; 
 scalar_t__ PULL_UP_VALID ; 
 scalar_t__ PUSH_DOWN_INVALID_FIRST ; 
 scalar_t__ PUSH_DOWN_VALID ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PullUpStatus
FUNC6(MultiUnaryNode *childNode)
{
	PullUpStatus pullUpStatus = PULL_UP_INVALID_FIRST;
	MultiNode *parentNode = FUNC4((MultiNode *) childNode);
	bool unaryParent = FUNC5(parentNode);
	bool binaryParent = FUNC1(parentNode);

	if (unaryParent)
	{
		/*
		 * Evaluate if parent can be pushed down below the child node, since it
		 * is equivalent to pulling up the child above its parent.
		 */
		PushDownStatus parentPushDownStatus = PUSH_DOWN_INVALID_FIRST;
		parentPushDownStatus = FUNC2((MultiUnaryNode *) parentNode, childNode);

		if (parentPushDownStatus == PUSH_DOWN_VALID)
		{
			pullUpStatus = PULL_UP_VALID;
		}
		else
		{
			pullUpStatus = PULL_UP_NOT_VALID;
		}
	}
	else if (binaryParent)
	{
		pullUpStatus = FUNC3((MultiBinaryNode *) parentNode, childNode);
	}

	FUNC0(pullUpStatus != PULL_UP_INVALID_FIRST);
	return pullUpStatus;
}
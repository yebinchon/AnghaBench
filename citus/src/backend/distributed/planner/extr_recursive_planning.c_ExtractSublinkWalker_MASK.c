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
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SubLink ; 
 int FUNC1 (int /*<<< orphan*/ *,int (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ **),int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC3(Node *node, List **sublinkList)
{
	bool walkerResult = false;
	if (node == NULL)
	{
		return false;
	}

	if (FUNC0(node, SubLink))
	{
		(*sublinkList) = FUNC2(*sublinkList, node);
	}
	else
	{
		walkerResult = FUNC1(node, ExtractSublinkWalker,
											  sublinkList);
	}

	return walkerResult;
}
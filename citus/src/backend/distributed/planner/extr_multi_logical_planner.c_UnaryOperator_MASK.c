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
typedef  int /*<<< orphan*/  MultiNode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MultiCollect ; 
 int /*<<< orphan*/  MultiExtendedOp ; 
 int /*<<< orphan*/  MultiPartition ; 
 int /*<<< orphan*/  MultiProject ; 
 int /*<<< orphan*/  MultiSelect ; 
 int /*<<< orphan*/  MultiTable ; 
 int /*<<< orphan*/  MultiTreeRoot ; 

bool
FUNC1(MultiNode *node)
{
	bool unaryOperator = false;

	if (FUNC0(node, MultiTreeRoot) || FUNC0(node, MultiTable) ||
		FUNC0(node, MultiCollect) || FUNC0(node, MultiSelect) ||
		FUNC0(node, MultiProject) || FUNC0(node, MultiPartition) ||
		FUNC0(node, MultiExtendedOp))
	{
		unaryOperator = true;
	}

	return unaryOperator;
}
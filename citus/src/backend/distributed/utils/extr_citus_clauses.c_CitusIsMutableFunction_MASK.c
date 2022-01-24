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

/* Variables and functions */
 int /*<<< orphan*/  CitusIsMutableFunctionIdChecker ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NextValueExpr ; 
 int /*<<< orphan*/  SQLValueFunction ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool
FUNC2(Node *node)
{
	/* Check for mutable functions in node itself */
	if (FUNC1(node, CitusIsMutableFunctionIdChecker, NULL))
	{
		return true;
	}

	if (FUNC0(node, SQLValueFunction))
	{
		/* all variants of SQLValueFunction are stable */
		return true;
	}

	if (FUNC0(node, NextValueExpr))
	{
		/* NextValueExpr is volatile */
		return true;
	}

	return false;
}
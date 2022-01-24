#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * quals; } ;
struct TYPE_4__ {int /*<<< orphan*/ * havingQual; TYPE_2__* jointree; } ;
typedef  TYPE_1__ Query ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_2__ FromExpr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IsNodeSubquery ; 

bool
FUNC1(Query *query)
{
	FromExpr *joinTree = query->jointree;
	Node *queryQuals = NULL;

	if (FUNC0(query->havingQual, IsNodeSubquery))
	{
		return true;
	}

	if (!joinTree)
	{
		return false;
	}

	queryQuals = joinTree->quals;

	return FUNC0(queryQuals, IsNodeSubquery);
}
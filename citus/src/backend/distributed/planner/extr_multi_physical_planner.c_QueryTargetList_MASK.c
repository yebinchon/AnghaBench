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
struct TYPE_2__ {int /*<<< orphan*/ * columnList; } ;
typedef  TYPE_1__ MultiProject ;
typedef  int /*<<< orphan*/  MultiNode ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  T_MultiProject ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static List *
FUNC5(MultiNode *multiNode)
{
	MultiProject *topProjectNode = NULL;
	List *columnList = NIL;
	List *queryTargetList = NIL;

	List *projectNodeList = FUNC1(multiNode, T_MultiProject);
	FUNC0(FUNC4(projectNodeList) > 0);

	topProjectNode = (MultiProject *) FUNC3(projectNodeList);
	columnList = topProjectNode->columnList;
	queryTargetList = FUNC2(columnList);

	FUNC0(queryTargetList != NIL);
	return queryTargetList;
}
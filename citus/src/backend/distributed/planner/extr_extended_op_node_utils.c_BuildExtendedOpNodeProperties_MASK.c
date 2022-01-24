#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int groupedByDisjointPartitionColumn; int repartitionSubquery; int hasNonPartitionColumnDistinctAgg; int pullDistinctColumns; int pushDownWindowFunctions; } ;
struct TYPE_7__ {int hasWindowFuncs; int /*<<< orphan*/ * havingQual; int /*<<< orphan*/ * targetList; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  MultiNode ;
typedef  TYPE_1__ MultiExtendedOp ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_2__ ExtendedOpNodeProperties ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 
 int FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  T_MultiTable ; 

ExtendedOpNodeProperties
FUNC5(MultiExtendedOp *extendedOpNode)
{
	ExtendedOpNodeProperties extendedOpNodeProperties;
	List *tableNodeList = NIL;
	List *targetList = NIL;
	Node *havingQual = NULL;

	bool groupedByDisjointPartitionColumn = false;
	bool repartitionSubquery = false;
	bool hasNonPartitionColumnDistinctAgg = false;
	bool pullDistinctColumns = false;
	bool pushDownWindowFunctions = false;

	tableNodeList = FUNC1((MultiNode *) extendedOpNode, T_MultiTable);
	groupedByDisjointPartitionColumn = FUNC2(tableNodeList,
																		extendedOpNode);

	repartitionSubquery = FUNC0(extendedOpNode);

	targetList = extendedOpNode->targetList;
	havingQual = extendedOpNode->havingQual;
	hasNonPartitionColumnDistinctAgg =
		FUNC3(targetList, havingQual, tableNodeList);

	pullDistinctColumns =
		FUNC4(repartitionSubquery, groupedByDisjointPartitionColumn,
								 hasNonPartitionColumnDistinctAgg);

	/*
	 * TODO: Only window functions that can be pushed down reach here, thus,
	 * using hasWindowFuncs is safe for now. However, this should be fixed
	 * when we support pull-to-master window functions.
	 */
	pushDownWindowFunctions = extendedOpNode->hasWindowFuncs;

	extendedOpNodeProperties.groupedByDisjointPartitionColumn =
		groupedByDisjointPartitionColumn;
	extendedOpNodeProperties.repartitionSubquery = repartitionSubquery;
	extendedOpNodeProperties.hasNonPartitionColumnDistinctAgg =
		hasNonPartitionColumnDistinctAgg;
	extendedOpNodeProperties.pullDistinctColumns = pullDistinctColumns;
	extendedOpNodeProperties.pushDownWindowFunctions = pushDownWindowFunctions;

	return extendedOpNodeProperties;
}
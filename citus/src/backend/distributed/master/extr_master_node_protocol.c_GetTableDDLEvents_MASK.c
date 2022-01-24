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
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

List *
FUNC5(Oid relationId, bool includeSequenceDefaults)
{
	List *tableDDLEventList = NIL;
	List *tableCreationCommandList = NIL;
	List *indexAndConstraintCommandList = NIL;
	List *replicaIdentityEvents = NIL;
	List *policyCommands = NIL;

	tableCreationCommandList = FUNC1(relationId,
														includeSequenceDefaults);
	tableDDLEventList = FUNC4(tableDDLEventList, tableCreationCommandList);

	indexAndConstraintCommandList = FUNC2(relationId);
	tableDDLEventList = FUNC4(tableDDLEventList, indexAndConstraintCommandList);

	replicaIdentityEvents = FUNC3(relationId);
	tableDDLEventList = FUNC4(tableDDLEventList, replicaIdentityEvents);

	policyCommands = FUNC0(relationId);
	tableDDLEventList = FUNC4(tableDDLEventList, policyCommands);

	return tableDDLEventList;
}
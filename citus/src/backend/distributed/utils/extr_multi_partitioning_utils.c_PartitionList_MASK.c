#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* rd_partdesc; } ;
struct TYPE_5__ {int nparts; int /*<<< orphan*/ * oids; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

List *
FUNC8(Oid parentRelationId)
{
	Relation rel = FUNC6(parentRelationId, AccessShareLock);
	List *partitionList = NIL;

	int partitionIndex = 0;
	int partitionCount = 0;

	if (!FUNC1(parentRelationId))
	{
		char *relationName = FUNC4(parentRelationId);

		FUNC2(ERROR, (FUNC3("\"%s\" is not a parent table", relationName)));
	}

	FUNC0(rel->rd_partdesc != NULL);

	partitionCount = rel->rd_partdesc->nparts;
	for (partitionIndex = 0; partitionIndex < partitionCount; ++partitionIndex)
	{
		partitionList =
			FUNC7(partitionList, rel->rd_partdesc->oids[partitionIndex]);
	}

	/* keep the lock */
	FUNC5(rel, NoLock);

	return partitionList;
}
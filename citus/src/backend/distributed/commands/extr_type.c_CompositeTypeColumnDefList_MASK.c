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
typedef  TYPE_1__* TupleDesc ;
struct TYPE_8__ {scalar_t__ attisdropped; } ;
struct TYPE_7__ {int natts; } ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_2__* Form_pg_attribute ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/ * NIL ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static List *
FUNC7(Oid typeOid)
{
	Relation relation = NULL;
	Oid relationId = InvalidOid;
	TupleDesc tupleDescriptor = NULL;
	int attributeIndex = 0;
	List *columnDefs = NIL;

	relationId = FUNC6(typeOid);
	relation = FUNC5(relationId, AccessShareLock);

	tupleDescriptor = FUNC0(relation);
	for (attributeIndex = 0; attributeIndex < tupleDescriptor->natts; attributeIndex++)
	{
		Form_pg_attribute attributeForm = FUNC1(tupleDescriptor, attributeIndex);

		if (attributeForm->attisdropped)
		{
			/* skip logically hidden attributes */
			continue;
		}

		columnDefs = FUNC3(columnDefs, FUNC2(attributeForm));
	}

	FUNC4(relation, AccessShareLock);

	return columnDefs;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* rd_rel; } ;
struct TYPE_10__ {scalar_t__ len; char* data; } ;
struct TYPE_9__ {char relreplident; } ;
typedef  TYPE_2__* StringInfo ;
typedef  TYPE_3__* Relation ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char REPLICA_IDENTITY_FULL ; 
 char REPLICA_IDENTITY_INDEX ; 
 char REPLICA_IDENTITY_NOTHING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,char*,...) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

char *
FUNC9(Oid tableRelationId)
{
	Relation relation = NULL;
	StringInfo buf = FUNC7();
	char *relationName = NULL;
	char replicaIdentity = 0;

	relation = FUNC6(tableRelationId, AccessShareLock);

	replicaIdentity = relation->rd_rel->relreplident;

	relationName = FUNC3(tableRelationId);

	if (replicaIdentity == REPLICA_IDENTITY_INDEX)
	{
		Oid indexId = FUNC1(relation);

		if (FUNC0(indexId))
		{
			FUNC2(buf, "ALTER TABLE %s REPLICA IDENTITY USING INDEX %s ",
							 relationName,
							 FUNC8(FUNC4(indexId)));
		}
	}
	else if (replicaIdentity == REPLICA_IDENTITY_NOTHING)
	{
		FUNC2(buf, "ALTER TABLE %s REPLICA IDENTITY NOTHING",
						 relationName);
	}
	else if (replicaIdentity == REPLICA_IDENTITY_FULL)
	{
		FUNC2(buf, "ALTER TABLE %s REPLICA IDENTITY FULL",
						 relationName);
	}

	FUNC5(relation, AccessShareLock);

	return (buf->len > 0) ? buf->data : NULL;
}
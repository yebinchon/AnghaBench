#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char replicationModel; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ DistTableCacheEntry ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(Oid sourceRelationId, Oid targetRelationId)
{
	DistTableCacheEntry *sourceTableEntry = NULL;
	DistTableCacheEntry *targetTableEntry = NULL;
	char sourceReplicationModel = 0;
	char targetReplicationModel = 0;

	sourceTableEntry = FUNC0(sourceRelationId);
	sourceReplicationModel = sourceTableEntry->replicationModel;

	targetTableEntry = FUNC0(targetRelationId);
	targetReplicationModel = targetTableEntry->replicationModel;

	if (sourceReplicationModel != targetReplicationModel)
	{
		char *sourceRelationName = FUNC4(sourceRelationId);
		char *targetRelationName = FUNC4(targetRelationId);

		FUNC1(ERROR, (FUNC3("cannot colocate tables %s and %s",
							   sourceRelationName, targetRelationName),
						FUNC2("Replication models don't match for %s and %s.",
								  sourceRelationName, targetRelationName)));
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_12__ {char* schemaname; } ;
struct TYPE_11__ {TYPE_4__* relation; } ;
struct TYPE_10__ {char* nodeName; int /*<<< orphan*/  nodePort; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ NodeAddress ;
typedef  TYPE_2__ CopyStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 char DISTRIBUTE_BY_APPEND ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FOR_DML ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (TYPE_2__*) ; 
 char FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/ * masterConnection ; 

__attribute__((used)) static void
FUNC12(CopyStmt *copyStatement, char *completionTag)
{
	NodeAddress *masterNodeAddress = FUNC4(copyStatement);
	char *nodeName = masterNodeAddress->nodeName;
	int32 nodePort = masterNodeAddress->nodePort;
	Oid relationId = InvalidOid;
	char partitionMethod = 0;
	char *schemaName = NULL;
	uint32 connectionFlags = FOR_DML;

	masterConnection = FUNC2(connectionFlags, nodeName, nodePort);
	FUNC3(masterConnection);
	FUNC0(masterConnection);

	FUNC7(masterConnection);

	/* strip schema name for local reference */
	schemaName = copyStatement->relation->schemaname;
	copyStatement->relation->schemaname = NULL;

	relationId = FUNC6(copyStatement->relation, NoLock, false);

	/* put schema name back */
	copyStatement->relation->schemaname = schemaName;
	partitionMethod = FUNC5(copyStatement->relation);
	if (partitionMethod != DISTRIBUTE_BY_APPEND)
	{
		FUNC10(ERROR, (FUNC11("copy from worker nodes is only supported "
							   "for append-partitioned tables")));
	}

	/*
	 * Remove master node options from the copy statement because they are not
	 * recognized by PostgreSQL machinery.
	 */
	FUNC8(copyStatement);

	FUNC1(copyStatement, completionTag, relationId);

	FUNC9(masterConnection);
	masterConnection = NULL;
}
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
typedef  int /*<<< orphan*/  uint64 ;
struct TYPE_8__ {scalar_t__ relationId; int /*<<< orphan*/  shardId; } ;
struct TYPE_7__ {char* data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  TYPE_2__ ShardInterval ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  INVALID_SHARD_ID ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  WORKER_APPLY_INTER_SHARD_DDL_COMMAND ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 TYPE_1__* FUNC11 () ; 
 char* FUNC12 (char*) ; 

char *
FUNC13(ShardInterval *shardInterval)
{
	Oid schemaId = FUNC10(shardInterval->relationId);
	char *schemaName = FUNC9(schemaId);
	char *escapedSchemaName = FUNC12(schemaName);

	char *command = FUNC1(shardInterval->relationId);
	char *escapedCommand = FUNC12(command);
	int shardIndex = FUNC3(shardInterval);

	Oid parentSchemaId = InvalidOid;
	char *parentSchemaName = NULL;
	char *escapedParentSchemaName = NULL;
	uint64 parentShardId = INVALID_SHARD_ID;

	StringInfo attachPartitionCommand = FUNC11();

	Oid parentRelationId = FUNC2(shardInterval->relationId);
	if (parentRelationId == InvalidOid)
	{
		FUNC5(ERROR, (FUNC6(ERRCODE_INVALID_PARAMETER_VALUE),
						FUNC8("cannot attach partition"),
						FUNC7("Referenced relation cannot be found.")));
	}

	parentSchemaId = FUNC10(parentRelationId);
	parentSchemaName = FUNC9(parentSchemaId);
	escapedParentSchemaName = FUNC12(parentSchemaName);
	parentShardId = FUNC0(parentRelationId, shardIndex);

	FUNC4(attachPartitionCommand,
					 WORKER_APPLY_INTER_SHARD_DDL_COMMAND, parentShardId,
					 escapedParentSchemaName, shardInterval->shardId,
					 escapedSchemaName, escapedCommand);

	return attachPartitionCommand->data;
}
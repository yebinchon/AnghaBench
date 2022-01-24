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
struct TYPE_3__ {int /*<<< orphan*/  shardId; int /*<<< orphan*/  relationId; } ;
typedef  TYPE_1__ ShardInterval ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (char*,char*) ; 

char *
FUNC6(ShardInterval *shardInterval)
{
	Oid schemaId = FUNC3(shardInterval->relationId);
	char *schemaName = FUNC1(schemaId);
	char *tableName = FUNC2(shardInterval->relationId);
	char *shardName = NULL;

	shardName = FUNC4(tableName);
	FUNC0(&shardName, shardInterval->shardId);
	shardName = FUNC5(schemaName, shardName);

	return shardName;
}
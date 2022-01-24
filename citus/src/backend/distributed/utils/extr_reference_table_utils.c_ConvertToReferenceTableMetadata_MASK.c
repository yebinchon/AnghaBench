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
typedef  int /*<<< orphan*/  uint64 ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  Var ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DISTRIBUTE_BY_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REPLICATION_MODEL_2PC ; 
 char FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(Oid relationId, uint64 shardId)
{
	uint32 currentColocationId = FUNC7(relationId);
	uint32 newColocationId = FUNC0();
	Var *distributionColumn = NULL;
	char shardStorageType = FUNC6(relationId);
	text *shardMinValue = NULL;
	text *shardMaxValue = NULL;

	/* delete old metadata rows */
	FUNC2(relationId);
	FUNC1(currentColocationId);
	FUNC3(shardId);

	/* insert new metadata rows */
	FUNC4(relationId, DISTRIBUTE_BY_NONE, distributionColumn,
							  newColocationId, REPLICATION_MODEL_2PC);
	FUNC5(relationId, shardId, shardStorageType, shardMinValue, shardMaxValue);
}
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
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_3__ {scalar_t__ shardState; } ;
typedef  TYPE_1__ ShardPlacement ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FILE_FINALIZED ; 
 scalar_t__ FILE_INACTIVE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(int64 shardId, char *sourceNodeName, int32 sourceNodePort,
						 char *targetNodeName, int32 targetNodePort)
{
	List *shardPlacementList = FUNC1(shardId);
	ShardPlacement *sourcePlacement = NULL;
	ShardPlacement *targetPlacement = NULL;
	bool missingSourceOk = false;
	bool missingTargetOk = false;

	sourcePlacement = FUNC0(shardPlacementList, sourceNodeName,
												 sourceNodePort, missingSourceOk);
	if (sourcePlacement->shardState != FILE_FINALIZED)
	{
		FUNC2(ERROR, (FUNC3(ERRCODE_INVALID_PARAMETER_VALUE),
						FUNC4("source placement must be in finalized state")));
	}

	targetPlacement = FUNC0(shardPlacementList, targetNodeName,
												 targetNodePort, missingTargetOk);
	if (targetPlacement->shardState != FILE_INACTIVE)
	{
		FUNC2(ERROR, (FUNC3(ERRCODE_INVALID_PARAMETER_VALUE),
						FUNC4("target placement must be in inactive state")));
	}
}
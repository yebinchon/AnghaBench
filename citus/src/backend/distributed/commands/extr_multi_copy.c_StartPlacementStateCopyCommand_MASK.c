#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
struct TYPE_14__ {int binary; } ;
struct TYPE_13__ {TYPE_1__* shardState; TYPE_2__* connectionState; } ;
struct TYPE_12__ {int /*<<< orphan*/  data; } ;
struct TYPE_11__ {int /*<<< orphan*/ * connection; } ;
struct TYPE_10__ {int /*<<< orphan*/  shardId; } ;
typedef  TYPE_3__* StringInfo ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  MultiConnection ;
typedef  int /*<<< orphan*/  CopyStmt ;
typedef  TYPE_4__ CopyPlacementState ;
typedef  TYPE_5__* CopyOutState ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ PGRES_COPY_IN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(CopyPlacementState *placementState,
							   CopyStmt *copyStatement, CopyOutState copyOutState)
{
	StringInfo copyCommand = NULL;
	PGresult *result = NULL;
	MultiConnection *connection = placementState->connectionState->connection;
	uint64 shardId = placementState->shardState->shardId;
	bool raiseInterrupts = true;
	bool binaryCopy = copyOutState->binary;

	copyCommand = FUNC0(copyStatement, shardId, binaryCopy);

	if (!FUNC7(connection, copyCommand->data))
	{
		FUNC4(connection, ERROR);
	}

	result = FUNC1(connection, raiseInterrupts);
	if (FUNC3(result) != PGRES_COPY_IN)
	{
		FUNC5(connection, result, ERROR);
	}

	FUNC2(result);

	if (binaryCopy)
	{
		FUNC6(copyOutState, shardId, FUNC8(connection));
	}
}
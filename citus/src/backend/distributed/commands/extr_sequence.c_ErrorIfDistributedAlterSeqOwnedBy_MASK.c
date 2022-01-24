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
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_3__ {int /*<<< orphan*/  options; int /*<<< orphan*/  missing_ok; int /*<<< orphan*/  sequence; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__ AlterSeqStmt ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  DEPENDENCY_AUTO ; 
 int /*<<< orphan*/  DEPENDENCY_INTERNAL ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOid ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 

void
FUNC8(AlterSeqStmt *alterSeqStmt)
{
	Oid sequenceId = FUNC2(alterSeqStmt->sequence, AccessShareLock,
									  alterSeqStmt->missing_ok);
	bool sequenceOwned = false;
	Oid ownedByTableId = InvalidOid;
	Oid newOwnedByTableId = InvalidOid;
	int32 ownedByColumnId = 0;
	bool hasDistributedOwner = false;

	/* alter statement referenced nonexistent sequence; return */
	if (sequenceId == InvalidOid)
	{
		return;
	}

	sequenceOwned = FUNC7(sequenceId, DEPENDENCY_AUTO, &ownedByTableId,
									&ownedByColumnId);
	if (!sequenceOwned)
	{
		sequenceOwned = FUNC7(sequenceId, DEPENDENCY_INTERNAL, &ownedByTableId,
										&ownedByColumnId);
	}

	/* see whether the sequence is already owned by a distributed table */
	if (sequenceOwned)
	{
		hasDistributedOwner = FUNC0(ownedByTableId);
	}

	if (FUNC1(alterSeqStmt->options, &newOwnedByTableId))
	{
		/* if a distributed sequence tries to change owner, error */
		if (hasDistributedOwner && ownedByTableId != newOwnedByTableId)
		{
			FUNC3(ERROR, (FUNC4(ERRCODE_FEATURE_NOT_SUPPORTED),
							FUNC6("cannot alter OWNED BY option of a sequence "
								   "already owned by a distributed table")));
		}
		else if (!hasDistributedOwner && FUNC0(newOwnedByTableId))
		{
			/* and don't let local sequences get a distributed OWNED BY */
			FUNC3(ERROR, (FUNC4(ERRCODE_FEATURE_NOT_SUPPORTED),
							FUNC6("cannot associate an existing sequence with a "
								   "distributed table"),
							FUNC5("Use a sequence in a distributed table by specifying "
									"a serial column type before creating any shards.")));
		}
	}
}
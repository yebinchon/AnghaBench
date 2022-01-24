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
struct TYPE_3__ {int /*<<< orphan*/  options; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ CreateSeqStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidOid ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void
FUNC6(CreateSeqStmt *createSeqStmt)
{
	Oid ownedByTableId = InvalidOid;

	/* create is easy: just prohibit any distributed OWNED BY */
	if (FUNC1(createSeqStmt->options, &ownedByTableId))
	{
		if (FUNC0(ownedByTableId))
		{
			FUNC2(ERROR, (FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
							FUNC5("cannot create sequences that specify a distributed "
								   "table in their OWNED BY option"),
							FUNC4("Use a sequence in a distributed table by specifying "
									"a serial column type before creating any shards.")));
		}
	}
}
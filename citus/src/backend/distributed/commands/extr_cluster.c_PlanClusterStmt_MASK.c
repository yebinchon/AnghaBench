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
struct TYPE_3__ {int /*<<< orphan*/ * relation; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ ClusterStmt ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  InvalidOid ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

List *
FUNC5(ClusterStmt *clusterStmt, const char *clusterCommand)
{
	bool showPropagationWarning = false;

	/* CLUSTER all */
	if (clusterStmt->relation == NULL)
	{
		showPropagationWarning = true;
	}
	else
	{
		Oid relationId = InvalidOid;
		bool missingOK = false;

		relationId = FUNC2(clusterStmt->relation, AccessShareLock,
									  missingOK);

		if (FUNC1(relationId))
		{
			showPropagationWarning = FUNC0(relationId);
		}
	}

	if (showPropagationWarning)
	{
		FUNC3(WARNING, (FUNC4("not propagating CLUSTER command to worker nodes")));
	}

	return NIL;
}
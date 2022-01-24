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
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  DELETE_ALL_NODES ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  REMOVE_ALL_CLUSTERED_TABLES_COMMAND ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

List *
FUNC3(void)
{
	List *dropSnapshotCommandList = NIL;
	List *detachPartitionCommandList = FUNC0();

	dropSnapshotCommandList = FUNC2(dropSnapshotCommandList,
										  detachPartitionCommandList);

	dropSnapshotCommandList = FUNC1(dropSnapshotCommandList,
									  REMOVE_ALL_CLUSTERED_TABLES_COMMAND);

	dropSnapshotCommandList = FUNC1(dropSnapshotCommandList, DELETE_ALL_NODES);

	return dropSnapshotCommandList;
}
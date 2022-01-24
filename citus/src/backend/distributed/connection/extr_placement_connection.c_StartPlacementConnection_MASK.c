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
typedef  int uint32 ;
struct TYPE_3__ {int /*<<< orphan*/  accessType; int /*<<< orphan*/ * placement; } ;
typedef  TYPE_1__ ShardPlacementAccess ;
typedef  int /*<<< orphan*/  ShardPlacement ;
typedef  int /*<<< orphan*/  MultiConnection ;

/* Variables and functions */
 int FOR_DDL ; 
 int FOR_DML ; 
 int /*<<< orphan*/  PLACEMENT_ACCESS_DDL ; 
 int /*<<< orphan*/  PLACEMENT_ACCESS_DML ; 
 int /*<<< orphan*/  PLACEMENT_ACCESS_SELECT ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 

MultiConnection *
FUNC3(uint32 flags, ShardPlacement *placement, const char *userName)
{
	ShardPlacementAccess *placementAccess =
		(ShardPlacementAccess *) FUNC2(sizeof(ShardPlacementAccess));

	placementAccess->placement = placement;

	if (flags & FOR_DDL)
	{
		placementAccess->accessType = PLACEMENT_ACCESS_DDL;
	}
	else if (flags & FOR_DML)
	{
		placementAccess->accessType = PLACEMENT_ACCESS_DML;
	}
	else
	{
		placementAccess->accessType = PLACEMENT_ACCESS_SELECT;
	}

	return FUNC0(flags, FUNC1(placementAccess), userName);
}
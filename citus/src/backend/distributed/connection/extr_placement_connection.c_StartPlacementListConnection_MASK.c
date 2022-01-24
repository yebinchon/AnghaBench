#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_5__ {char* nodeName; int nodePort; } ;
struct TYPE_4__ {TYPE_2__* placement; } ;
typedef  TYPE_1__ ShardPlacementAccess ;
typedef  TYPE_2__ ShardPlacement ;
typedef  int /*<<< orphan*/  MultiConnection ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int CONNECTION_PER_PLACEMENT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 char* FUNC3 () ; 
 int FORCE_NEW_CONNECTION ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (int,char*,int,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

MultiConnection *
FUNC8(uint32 flags, List *placementAccessList,
							 const char *userName)
{
	char *freeUserName = NULL;
	MultiConnection *chosenConnection = NULL;

	if (userName == NULL)
	{
		userName = freeUserName = FUNC3();
	}

	chosenConnection = FUNC4(flags, placementAccessList, userName);
	if (chosenConnection == NULL)
	{
		/* use the first placement from the list to extract nodename and nodeport */
		ShardPlacementAccess *placementAccess =
			(ShardPlacementAccess *) FUNC6(placementAccessList);
		ShardPlacement *placement = placementAccess->placement;
		char *nodeName = placement->nodeName;
		int nodePort = placement->nodePort;

		/*
		 * No suitable connection in the placement->connection mapping, get one from
		 * the node->connection pool.
		 */
		chosenConnection = FUNC5(flags, nodeName, nodePort,
														   userName, NULL);

		if ((flags & CONNECTION_PER_PLACEMENT) &&
			FUNC2(chosenConnection, placement))
		{
			/*
			 * Cached connection accessed a non-co-located placement in the same
			 * table or co-location group, while the caller asked for a connection
			 * per placement. Open a new connection instead.
			 *
			 * We use this for situations in which we want to use a different
			 * connection for every placement, such as COPY. If we blindly returned
			 * a cached conection that already modified a different, non-co-located
			 * placement B in the same table or in a table with the same co-location
			 * ID as the current placement, then we'd no longer able to write to
			 * placement B later in the COPY.
			 */
			chosenConnection = FUNC5(flags |
															   FORCE_NEW_CONNECTION,
															   nodeName, nodePort,
															   userName, NULL);

			FUNC0(!FUNC2(chosenConnection, placement));
		}
	}

	/* remember which connection we're going to use to access the placements */
	FUNC1(placementAccessList, chosenConnection);

	if (freeUserName)
	{
		FUNC7(freeUserName);
	}

	return chosenConnection;
}
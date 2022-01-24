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
typedef  int /*<<< orphan*/  TrackerServerInfo ;
struct TYPE_3__ {int server_count; int /*<<< orphan*/ * servers; } ;
typedef  TYPE_1__ TrackerServerGroup ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(TrackerServerGroup *pTrackerGroup, \
		TrackerServerInfo *pInsertedServer)
{
	TrackerServerInfo *pDestServer;
	for (pDestServer=pTrackerGroup->servers+pTrackerGroup->server_count;
		pDestServer>pTrackerGroup->servers; pDestServer--)
	{
		if (FUNC1(pInsertedServer, pDestServer-1) > 0)
		{
			FUNC0(pDestServer, pInsertedServer,
				sizeof(TrackerServerInfo));
			return;
		}

		FUNC0(pDestServer, pDestServer-1, sizeof(TrackerServerInfo));
	}

	FUNC0(pDestServer, pInsertedServer, sizeof(TrackerServerInfo));
}
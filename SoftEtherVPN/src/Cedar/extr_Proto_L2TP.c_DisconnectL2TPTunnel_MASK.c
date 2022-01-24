#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_4__ {int Disconnecting; int WantToDisconnect; int /*<<< orphan*/  SessionList; int /*<<< orphan*/  TunnelId2; int /*<<< orphan*/  TunnelId1; } ;
typedef  TYPE_1__ L2TP_TUNNEL ;
typedef  int /*<<< orphan*/  L2TP_SESSION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(L2TP_TUNNEL *t)
{
	// Validate arguments
	if (t == NULL)
	{
		return;
	}

	if (/*t->Established && */t->Disconnecting == false && t->WantToDisconnect == false)
	{
		UINT i;

		FUNC0("Trying to Disconnect Tunnel ID %u/%u\n", t->TunnelId1, t->TunnelId2);
		t->WantToDisconnect = true;

		// Disconnect all sessions within the tunnel
		for (i = 0;i < FUNC3(t->SessionList);i++)
		{
			L2TP_SESSION *s = FUNC2(t->SessionList, i);

			FUNC1(t, s);
		}
	}
}
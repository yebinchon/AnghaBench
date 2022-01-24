#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_14__ {scalar_t__ Type; int BeingOffline; int Offline; TYPE_2__* Cedar; int /*<<< orphan*/  lock_online; int /*<<< orphan*/  Name; int /*<<< orphan*/ * SecureNAT; scalar_t__ Halt; } ;
struct TYPE_13__ {int /*<<< orphan*/ * Bridge; int /*<<< orphan*/  HubName; } ;
struct TYPE_12__ {TYPE_1__* Server; int /*<<< orphan*/  LocalBridgeList; } ;
struct TYPE_11__ {scalar_t__ ServerType; } ;
typedef  TYPE_3__ LOCALBRIDGE ;
typedef  TYPE_4__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*) ; 
 scalar_t__ HUB_TYPE_FARM_DYNAMIC ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(HUB *h)
{
	UINT i;
	bool for_cluster = false;
	// Validate arguments
	if (h == NULL)
	{
		return;
	}

	if (h->Cedar->Server != NULL && h->Cedar->Server->ServerType == SERVER_TYPE_FARM_CONTROLLER)
	{
		if (h->Type == HUB_TYPE_FARM_DYNAMIC)
		{
			for_cluster = true;
		}
	}

	h->BeingOffline = true;

	FUNC4(h->lock_online);
	{
		if (h->Offline || h->Halt)
		{
			FUNC11(h->lock_online);
			h->BeingOffline = false;
			return;
		}

		FUNC1(h, "LH_OFFLINE");

		// Stop all links
		FUNC8(h);

		// Stop the SecureNAT
		FUNC7(h->SecureNAT);
		h->SecureNAT = NULL;

		// Stop all the local bridges that is associated with this HUB
		FUNC5(h->Cedar->LocalBridgeList);
		{
			for (i = 0;i < FUNC3(h->Cedar->LocalBridgeList);i++)
			{
				LOCALBRIDGE *br = FUNC2(h->Cedar->LocalBridgeList, i);

				if (FUNC10(br->HubName, h->Name) == 0)
				{
					FUNC0(br->Bridge);
					br->Bridge = NULL;
				}
			}
		}
		FUNC12(h->Cedar->LocalBridgeList);

		// Offline
		h->Offline = true;

		// Disconnect all sessions
		FUNC9(h);
	}
	FUNC11(h->lock_online);

	h->BeingOffline = false;

	if (h->Cedar->Server != NULL)
	{
		FUNC6(h);
	}
}
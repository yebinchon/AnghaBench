#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_15__ {int /*<<< orphan*/  OsType; } ;
struct TYPE_14__ {int /*<<< orphan*/  LocalBridgeList; int /*<<< orphan*/  HubList; } ;
struct TYPE_13__ {char* Name; scalar_t__ Type; int Offline; int /*<<< orphan*/  lock_online; int /*<<< orphan*/  ref; } ;
struct TYPE_12__ {char* DeviceName; char* HubName; int TapMode; int Local; int LimitBroadcast; int Monitor; int /*<<< orphan*/  TapMacAddress; int /*<<< orphan*/ * Bridge; } ;
typedef  TYPE_1__ LOCALBRIDGE ;
typedef  TYPE_2__ HUB ;
typedef  TYPE_3__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC5 () ; 
 scalar_t__ HUB_TYPE_FARM_DYNAMIC ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC7 (char*,int) ; 
 void* FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC18 (int) ; 

void FUNC19(CEDAR *c, char *hubname, char *devicename, bool local, bool monitor, bool tapmode, char *tapaddr, bool limit_broadcast)
{
	UINT i;
	HUB *h = NULL;
	LOCALBRIDGE *br = NULL;
	// Validate arguments
	if (c == NULL || hubname == NULL || devicename == NULL)
	{
		return;
	}

	if (FUNC12(FUNC5()->OsType) == false)
	{
		tapmode = false;
	}

	FUNC11(c->HubList);
	{
		FUNC11(c->LocalBridgeList);
		{
			bool exists = false;

			// Ensure that the same configuration local-bridge doesn't exist already 
			for (i = 0;i < FUNC9(c->LocalBridgeList);i++)
			{
				LOCALBRIDGE *br = FUNC8(c->LocalBridgeList, i);
				if (FUNC14(br->DeviceName, devicename) == 0)
				{
					if (FUNC14(br->HubName, hubname) == 0)
					{
						if (br->TapMode == tapmode)
						{
							exists = true;
						}
					}
				}
			}

			if (exists == false)
			{
				// Add configuration
				br = FUNC18(sizeof(LOCALBRIDGE));
				FUNC15(br->HubName, sizeof(br->HubName), hubname);
				FUNC15(br->DeviceName, sizeof(br->DeviceName), devicename);
				br->Bridge = NULL;
				br->Local = local;
				br->TapMode = tapmode;
				br->LimitBroadcast = limit_broadcast;
				br->Monitor = monitor;
				if (br->TapMode)
				{
					if (tapaddr != NULL && FUNC7(tapaddr, 6) == false)
					{
						FUNC3(br->TapMacAddress, tapaddr, 6);
					}
					else
					{
						FUNC4(br->TapMacAddress);
					}
				}

				FUNC0(c->LocalBridgeList, br);

				// Find the hub
				for (i = 0;i < FUNC9(c->HubList);i++)
				{
					HUB *hub = FUNC8(c->HubList, i);
					if (FUNC14(hub->Name, br->HubName) == 0)
					{
						h = hub;
						FUNC1(h->ref);
						break;
					}
				}
			}
		}
		FUNC17(c->LocalBridgeList);
	}
	FUNC17(c->HubList);

	// Start the local-bridge immediately
	if (h != NULL && br != NULL && h->Type != HUB_TYPE_FARM_DYNAMIC)
	{
		FUNC10(h->lock_online);
		{
			if (h->Offline == false)
			{
				FUNC11(c->LocalBridgeList);
				{
					if (FUNC6(c->LocalBridgeList, br))
					{
						if (br->Bridge == NULL)
						{
							br->Bridge = FUNC2(h, br->DeviceName, NULL, br->Local, br->Monitor, br->TapMode, br->TapMacAddress, br->LimitBroadcast, br);
						}
					}
				}
				FUNC17(c->LocalBridgeList);
			}
		}
		FUNC16(h->lock_online);
	}

	FUNC13(h);
}
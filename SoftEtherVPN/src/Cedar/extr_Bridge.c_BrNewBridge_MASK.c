#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int Local; int Monitor; int TapMode; int LimitBroadcast; int /*<<< orphan*/  TapMacAddress; int /*<<< orphan*/ * ParentLocalBridge; TYPE_1__* Policy; int /*<<< orphan*/  Name; TYPE_2__* Hub; int /*<<< orphan*/  Cedar; } ;
struct TYPE_13__ {int /*<<< orphan*/  Cedar; } ;
struct TYPE_12__ {int MonitorPort; int NoBroadcastLimiter; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_1__ POLICY ;
typedef  int /*<<< orphan*/  LOCALBRIDGE ;
typedef  TYPE_2__ HUB ;
typedef  TYPE_3__ BRIDGE ;

/* Variables and functions */
 int /*<<< orphan*/  BrBridgeThread ; 
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 () ; 
 int FUNC4 (char*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC9 (int) ; 

BRIDGE *FUNC10(HUB *h, char *name, POLICY *p, bool local, bool monitor, bool tapmode, char *tapaddr, bool limit_broadcast, LOCALBRIDGE *parent_local_bridge)
{
	BRIDGE *b;
	POLICY *policy;
	THREAD *t;
	// Validate arguments
	if (h == NULL || name == NULL || parent_local_bridge == NULL)
	{
		return NULL;
	}

	if (p == NULL)
	{
		policy = FUNC0(FUNC3());
	}
	else
	{
		policy = FUNC0(p);
	}

	b = FUNC9(sizeof(BRIDGE));
	b->Cedar = h->Cedar;
	b->Hub = h;
	FUNC7(b->Name, sizeof(b->Name), name);
	b->Policy = policy;
	b->Local = local;
	b->Monitor = monitor;
	b->TapMode = tapmode;
	b->LimitBroadcast = limit_broadcast;
	b->ParentLocalBridge = parent_local_bridge;

	if (b->TapMode)
	{
		if (tapaddr != NULL && FUNC4(tapaddr, 6) == false)
		{
			FUNC1(b->TapMacAddress, tapaddr, 6);
		}
		else
		{
			FUNC2(b->TapMacAddress);
		}
	}

	if (monitor)
	{
		// Enabling monitoring mode
		policy->MonitorPort = true;
	}

	if (b->LimitBroadcast == false)
	{
		// Disable broadcast limiter
		policy->NoBroadcastLimiter = true;
	}

	// Start thread
	t = FUNC5(BrBridgeThread, b);
	FUNC8(t);
	FUNC6(t);

	return b;
}
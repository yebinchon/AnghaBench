#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_15__ ;
typedef  struct TYPE_18__   TYPE_14__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_24__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_23__ {int /*<<< orphan*/  LinkList; } ;
struct TYPE_22__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * ServerCert; int /*<<< orphan*/  CheckServerCert; TYPE_14__* Option; TYPE_14__* Policy; int /*<<< orphan*/  Auth; int /*<<< orphan*/  ref; } ;
struct TYPE_19__ {int Ver3; int /*<<< orphan*/  AccountName; } ;
struct TYPE_21__ {int /*<<< orphan*/  ServerCert; int /*<<< orphan*/  CheckServerCert; TYPE_15__ Policy; int /*<<< orphan*/  ClientAuth; TYPE_15__* ClientOption; int /*<<< orphan*/  HubName; } ;
struct TYPE_20__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_18__ {int RetryInterval; int NoRoutingTracking; int RequireBridgeRoutingMode; int RequireMonitorMode; int /*<<< orphan*/  NumRetry; int /*<<< orphan*/  DeviceName; int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_CREATE_LINK ;
typedef  int /*<<< orphan*/  POLICY ;
typedef  TYPE_3__ LINK ;
typedef  TYPE_4__ HUB ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_5__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_14__*,TYPE_15__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERR_HUB_NOT_FOUND ; 
 scalar_t__ ERR_LINK_CANT_CREATE_ON_FARM ; 
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ; 
 scalar_t__ ERR_NOT_SUPPORTED ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ ERR_OBJECT_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  LINK_DEVICE_NAME ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int NUM_POLICY_ITEM_FOR_VER2 ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 scalar_t__ SERVER_TYPE_STANDALONE ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 

UINT FUNC22(ADMIN *a, RPC_CREATE_LINK *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;
	UINT ret = ERR_NO_ERROR;
	UINT i;
	LINK *k;


	if (s->ServerType != SERVER_TYPE_STANDALONE)
	{
		return ERR_NOT_SUPPORTED;
	}

	CHECK_RIGHT;

	if (s->ServerType != SERVER_TYPE_STANDALONE)
	{
		return ERR_LINK_CANT_CREATE_ON_FARM;
	}

	FUNC13(c);
	{
		h = FUNC7(c, t->HubName);
	}
	FUNC20(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	if (a->ServerAdmin == false && FUNC8(h, "no_cascade") != 0)
	{
		FUNC15(h);
		return ERR_NOT_ENOUGH_RIGHT;
	}

	k = NULL;

	// Find the link
	FUNC14(h->LinkList);
	{
		for (i = 0;i < FUNC11(h->LinkList);i++)
		{
			LINK *kk = FUNC10(h->LinkList, i);
			FUNC12(kk->lock);
			{
				if (FUNC18(kk->Option->AccountName, t->ClientOption->AccountName) == 0)
				{
					k = kk;
					FUNC1(kk->ref);
				}
			}
			FUNC19(kk->lock);

			if (k != NULL)
			{
				break;
			}
		}
	}
	FUNC21(h->LinkList);

	if (k == NULL)
	{
		// The link is not found
		FUNC15(h);
		return ERR_OBJECT_NOT_FOUND;
	}

	FUNC0(a, h, "LA_SET_LINK", t->ClientOption->AccountName);

	FUNC12(k->lock);
	{
		// Update the configuration of the link
		if (k->ServerCert != NULL)
		{
			FUNC6(k->ServerCert);
			k->ServerCert = NULL;
		}

		FUNC4(k->Option, t->ClientOption, sizeof(CLIENT_OPTION));
		FUNC17(k->Option->DeviceName, sizeof(k->Option->DeviceName), LINK_DEVICE_NAME);
		k->Option->NumRetry = INFINITE;
		k->Option->RetryInterval = 10;
		k->Option->NoRoutingTracking = true;
		FUNC2(k->Auth);
		k->Auth = FUNC5(t->ClientAuth);

		if (t->Policy.Ver3 == false)
		{
			FUNC4(k->Policy, &t->Policy, sizeof(UINT) * NUM_POLICY_ITEM_FOR_VER2);
		}
		else
		{
			FUNC4(k->Policy, &t->Policy, sizeof(POLICY));
		}

		k->Option->RequireBridgeRoutingMode = true;	// Enable Bridge / Routing mode
		k->Option->RequireMonitorMode = false;	// Disable monitor mode

		k->CheckServerCert = t->CheckServerCert;
		k->ServerCert = FUNC3(t->ServerCert);
	}
	FUNC19(k->lock);

	FUNC9(s);

	FUNC16(k);
	FUNC15(h);

	return ret;
}
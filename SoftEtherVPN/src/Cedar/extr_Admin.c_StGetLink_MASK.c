#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_16__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hubname ;
typedef  scalar_t__ UINT ;
struct TYPE_23__ {int /*<<< orphan*/  AccountName; } ;
struct TYPE_22__ {TYPE_1__* Server; } ;
struct TYPE_21__ {int /*<<< orphan*/  LinkList; } ;
struct TYPE_20__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  ServerCert; int /*<<< orphan*/  CheckServerCert; TYPE_16__* Policy; int /*<<< orphan*/  Auth; TYPE_16__* Option; scalar_t__ Offline; int /*<<< orphan*/  ref; } ;
struct TYPE_19__ {char* HubName; int Online; int /*<<< orphan*/  ServerCert; int /*<<< orphan*/  CheckServerCert; TYPE_6__ Policy; int /*<<< orphan*/  ClientAuth; TYPE_6__* ClientOption; } ;
struct TYPE_18__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_17__ {int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_CREATE_LINK ;
typedef  int /*<<< orphan*/  POLICY ;
typedef  TYPE_3__ LINK ;
typedef  TYPE_4__ HUB ;
typedef  int /*<<< orphan*/  CLIENT_OPTION ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_5__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,TYPE_16__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERR_HUB_NOT_FOUND ; 
 scalar_t__ ERR_LINK_CANT_CREATE_ON_FARM ; 
 scalar_t__ ERR_NOT_SUPPORTED ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ ERR_OBJECT_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 scalar_t__ SERVER_TYPE_STANDALONE ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int) ; 
 TYPE_6__* FUNC19 (int) ; 

UINT FUNC20(ADMIN *a, RPC_CREATE_LINK *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;
	UINT ret = ERR_NO_ERROR;
	UINT i;
	char hubname[MAX_SIZE];
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

	FUNC9(c);
	{
		h = FUNC5(c, t->HubName);
	}
	FUNC16(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	k = NULL;

	// Find the link
	FUNC10(h->LinkList);
	{
		for (i = 0;i < FUNC7(h->LinkList);i++)
		{
			LINK *kk = FUNC6(h->LinkList, i);
			FUNC8(kk->lock);
			{
				if (FUNC14(kk->Option->AccountName, t->ClientOption->AccountName) == 0)
				{
					k = kk;
					FUNC0(kk->ref);
				}
			}
			FUNC15(kk->lock);

			if (k != NULL)
			{
				break;
			}
		}
	}
	FUNC17(h->LinkList);

	if (k == NULL)
	{
		// The link is not found
		FUNC11(h);
		return ERR_OBJECT_NOT_FOUND;
	}

	FUNC13(hubname, sizeof(hubname), t->HubName);
	FUNC4(t);
	FUNC18(t, sizeof(RPC_CREATE_LINK));
	FUNC13(t->HubName, sizeof(t->HubName), hubname);

	FUNC8(k->lock);
	{
		// Get configuration
		t->Online = k->Offline ? false : true;
		t->ClientOption = FUNC19(sizeof(CLIENT_OPTION));
		FUNC2(t->ClientOption, k->Option, sizeof(CLIENT_OPTION));
		t->ClientAuth = FUNC3(k->Auth);
		FUNC2(&t->Policy, k->Policy, sizeof(POLICY));

		t->CheckServerCert = k->CheckServerCert;
		t->ServerCert = FUNC1(k->ServerCert);
	}
	FUNC15(k->lock);

	FUNC12(k);
	FUNC11(h);

	return ret;
}
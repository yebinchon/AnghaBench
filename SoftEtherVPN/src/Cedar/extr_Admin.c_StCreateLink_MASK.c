#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_14__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_27__ {int ServerAdmin; TYPE_2__* Server; } ;
struct TYPE_26__ {int /*<<< orphan*/  LinkList; } ;
struct TYPE_25__ {int Offline; int /*<<< orphan*/  ServerCert; int /*<<< orphan*/  CheckServerCert; int /*<<< orphan*/  lock; int /*<<< orphan*/  ref; TYPE_1__* Option; } ;
struct TYPE_24__ {int /*<<< orphan*/  ServerCert; int /*<<< orphan*/  CheckServerCert; int /*<<< orphan*/  Policy; int /*<<< orphan*/  ClientAuth; TYPE_14__* ClientOption; int /*<<< orphan*/  HubName; } ;
struct TYPE_23__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_22__ {int /*<<< orphan*/  AccountName; } ;
struct TYPE_21__ {int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ RPC_CREATE_LINK ;
typedef  TYPE_4__ LINK ;
typedef  TYPE_5__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_6__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERR_HUB_NOT_FOUND ; 
 scalar_t__ ERR_INTERNAL_ERROR ; 
 scalar_t__ ERR_LINK_ALREADY_EXISTS ; 
 scalar_t__ ERR_LINK_CANT_CREATE_ON_FARM ; 
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ; 
 scalar_t__ ERR_NO_ERROR ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC11 (int /*<<< orphan*/ *,TYPE_5__*,TYPE_14__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 scalar_t__ SERVER_TYPE_STANDALONE ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

UINT FUNC19(ADMIN *a, RPC_CREATE_LINK *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;
	UINT ret = ERR_NO_ERROR;
	UINT i;
	LINK *k;

	CHECK_RIGHT;


	if (s->ServerType != SERVER_TYPE_STANDALONE)
	{
		return ERR_LINK_CANT_CREATE_ON_FARM;
	}

	FUNC9(c);
	{
		h = FUNC3(c, t->HubName);
	}
	FUNC17(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	if (a->ServerAdmin == false && FUNC4(h, "no_cascade") != 0)
	{
		FUNC12(h);
		return ERR_NOT_ENOUGH_RIGHT;
	}

	k = NULL;

	// Check for existing a link which has same name
	FUNC10(h->LinkList);
	{
		for (i = 0;i < FUNC7(h->LinkList);i++)
		{
			LINK *kk = FUNC6(h->LinkList, i);
			FUNC8(kk->lock);
			{
				if (FUNC15(kk->Option->AccountName, t->ClientOption->AccountName) == 0)
				{
					k = kk;
					FUNC1(kk->ref);
				}
			}
			FUNC16(kk->lock);

			if (k != NULL)
			{
				break;
			}
		}
	}
	FUNC18(h->LinkList);

	if (k != NULL)
	{
		// There is a link which has same name
		FUNC13(k);
		FUNC12(h);
		return ERR_LINK_ALREADY_EXISTS;
	}

	FUNC0(a, h, "LA_CREATE_LINK", t->ClientOption->AccountName);

	// Create a new link
	k = FUNC11(c, h, t->ClientOption, t->ClientAuth, &t->Policy);

	if (k == NULL)
	{
		// Link creation failed
		ret = ERR_INTERNAL_ERROR;
	}
	else
	{
		// setting of verifying server certification
		// 
		k->CheckServerCert = t->CheckServerCert;
		k->ServerCert = FUNC2(t->ServerCert);

		// stay this off-line
		k->Offline = false;
		FUNC14(k);
		FUNC13(k);

		FUNC5(s);
	}

	FUNC12(h);

	return ret;
}
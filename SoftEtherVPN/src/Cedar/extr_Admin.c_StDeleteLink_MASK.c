#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  hubname ;
typedef  int /*<<< orphan*/  accountname ;
typedef  scalar_t__ UINT ;
struct TYPE_25__ {int ServerAdmin; TYPE_2__* Server; } ;
struct TYPE_24__ {int /*<<< orphan*/  LinkList; } ;
struct TYPE_23__ {int NoOnline; int /*<<< orphan*/  lock; int /*<<< orphan*/  ref; TYPE_1__* Option; } ;
struct TYPE_22__ {int /*<<< orphan*/  AccountName; int /*<<< orphan*/  HubName; } ;
struct TYPE_21__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_20__ {int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ RPC_LINK ;
typedef  TYPE_4__ LINK ;
typedef  TYPE_5__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_6__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ ERR_HUB_NOT_FOUND ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ; 
 scalar_t__ ERR_NOT_SUPPORTED ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ ERR_OBJECT_NOT_FOUND ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_ACCOUNT_NAME_LEN ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 scalar_t__ SERVER_TYPE_STANDALONE ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

UINT FUNC21(ADMIN *a, RPC_LINK *t)
{
	UINT i;
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;
	UINT ret = ERR_NO_ERROR;
	char hubname[MAX_HUBNAME_LEN + 1];
	wchar_t accountname[MAX_ACCOUNT_NAME_LEN + 1];
	LINK *k;

	if (FUNC15(t->AccountName))
	{
		return ERR_INVALID_PARAMETER;
	}

	if (s->ServerType != SERVER_TYPE_STANDALONE)
	{
		return ERR_NOT_SUPPORTED;
	}

	CHECK_RIGHT;

	FUNC9(c);
	{
		h = FUNC3(c, t->HubName);
	}
	FUNC19(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	if (a->ServerAdmin == false && FUNC4(h, "no_cascade") != 0)
	{
		FUNC11(h);
		return ERR_NOT_ENOUGH_RIGHT;
	}

	FUNC14(hubname, sizeof(hubname), t->HubName);
	FUNC17(accountname, sizeof(accountname), t->AccountName);
	k = NULL;

	// Find specified link
	FUNC10(h->LinkList);
	{
		for (i = 0;i < FUNC7(h->LinkList);i++)
		{
			LINK *kk = FUNC6(h->LinkList, i);
			FUNC8(kk->lock);
			{
				if (FUNC16(kk->Option->AccountName, accountname) == 0)
				{
					k = kk;
					FUNC1(kk->ref);
				}
			}
			FUNC18(kk->lock);

			if (k != NULL)
			{
				break;
			}
		}
	}
	FUNC20(h->LinkList);

	if (k == NULL)
	{
		// Specified link is not found
		FUNC11(h);

		return ERR_OBJECT_NOT_FOUND;
	}

	k->NoOnline = true;

	FUNC0(a, h, "LA_DELETE_LINK", t->AccountName);

	FUNC13(k);

	FUNC5(s);

	FUNC2(h, k);

	FUNC12(k);
	FUNC11(h);

	return ret;
}
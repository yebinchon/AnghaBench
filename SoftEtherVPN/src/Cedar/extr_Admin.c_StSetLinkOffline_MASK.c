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

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  hubname ;
typedef  int /*<<< orphan*/  accountname ;
typedef  scalar_t__ UINT ;
struct TYPE_23__ {int ServerAdmin; TYPE_2__* Server; } ;
struct TYPE_22__ {int /*<<< orphan*/  LinkList; } ;
struct TYPE_21__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  ref; TYPE_1__* Option; } ;
struct TYPE_20__ {int /*<<< orphan*/  AccountName; int /*<<< orphan*/  HubName; } ;
struct TYPE_19__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_18__ {int /*<<< orphan*/  AccountName; } ;
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
 scalar_t__ ERR_HUB_NOT_FOUND ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ; 
 scalar_t__ ERR_NOT_SUPPORTED ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ ERR_OBJECT_NOT_FOUND ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_ACCOUNT_NAME_LEN ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 scalar_t__ SERVER_TYPE_STANDALONE ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

UINT FUNC20(ADMIN *a, RPC_LINK *t)
{
	UINT i;
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;
	UINT ret = ERR_NO_ERROR;
	char hubname[MAX_HUBNAME_LEN + 1];
	wchar_t accountname[MAX_ACCOUNT_NAME_LEN + 1];
	LINK *k;


	if (FUNC14(t->AccountName))
	{
		return ERR_INVALID_PARAMETER;
	}

	if (s->ServerType != SERVER_TYPE_STANDALONE)
	{
		return ERR_NOT_SUPPORTED;
	}

	CHECK_RIGHT;

	FUNC8(c);
	{
		h = FUNC2(c, t->HubName);
	}
	FUNC18(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	if (a->ServerAdmin == false && FUNC3(h, "no_cascade") != 0)
	{
		FUNC10(h);
		return ERR_NOT_ENOUGH_RIGHT;
	}

	FUNC13(hubname, sizeof(hubname), t->HubName);
	FUNC16(accountname, sizeof(accountname), t->AccountName);
	k = NULL;

	// Find specified link
	FUNC9(h->LinkList);
	{
		for (i = 0;i < FUNC6(h->LinkList);i++)
		{
			LINK *kk = FUNC5(h->LinkList, i);
			FUNC7(kk->lock);
			{
				if (FUNC15(kk->Option->AccountName, accountname) == 0)
				{
					k = kk;
					FUNC1(kk->ref);
				}
			}
			FUNC17(kk->lock);

			if (k != NULL)
			{
				break;
			}
		}
	}
	FUNC19(h->LinkList);

	if (k == NULL)
	{
		// Link is not found
		FUNC10(h);

		return ERR_OBJECT_NOT_FOUND;
	}

	FUNC0(a, h, "LA_SET_LINK_OFFLINE", t->AccountName);

	FUNC12(k);

	FUNC4(s);

	FUNC11(k);
	FUNC10(h);

	return ret;
}
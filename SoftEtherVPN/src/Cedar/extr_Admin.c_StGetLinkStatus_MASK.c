#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
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
struct TYPE_24__ {TYPE_3__* Server; } ;
struct TYPE_23__ {int /*<<< orphan*/  LinkList; } ;
struct TYPE_22__ {int Offline; int /*<<< orphan*/  lock; TYPE_2__* ClientSession; int /*<<< orphan*/  ref; TYPE_1__* Option; } ;
struct TYPE_21__ {char* HubName; int /*<<< orphan*/  Status; int /*<<< orphan*/ * AccountName; } ;
struct TYPE_20__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_19__ {int /*<<< orphan*/  ref; } ;
struct TYPE_18__ {int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_2__ SESSION ;
typedef  TYPE_3__ SERVER ;
typedef  TYPE_4__ RPC_LINK_STATUS ;
typedef  TYPE_5__ LINK ;
typedef  TYPE_6__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_7__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ ERR_HUB_NOT_FOUND ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_LINK_IS_OFFLINE ; 
 scalar_t__ ERR_NOT_SUPPORTED ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ ERR_OBJECT_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_ACCOUNT_NAME_LEN ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 scalar_t__ SERVER_TYPE_STANDALONE ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,int) ; 

UINT FUNC20(ADMIN *a, RPC_LINK_STATUS *t)
{
	UINT i;
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;
	UINT ret = ERR_NO_ERROR;
	char hubname[MAX_HUBNAME_LEN + 1];
	wchar_t accountname[MAX_ACCOUNT_NAME_LEN + 1];
	LINK *k;
	SESSION *sess;

	if (FUNC13(t->AccountName))
	{
		return ERR_INVALID_PARAMETER;
	}

	if (s->ServerType != SERVER_TYPE_STANDALONE)
	{
		return ERR_NOT_SUPPORTED;
	}

	CHECK_RIGHT;

	FUNC7(c);
	{
		h = FUNC3(c, t->HubName);
	}
	FUNC17(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	FUNC12(hubname, sizeof(hubname), t->HubName);
	FUNC15(accountname, sizeof(accountname), t->AccountName);
	FUNC2(t);
	FUNC19(t, sizeof(RPC_LINK_STATUS));
	FUNC12(t->HubName, sizeof(t->HubName), hubname);
	FUNC15(t->AccountName, sizeof(t->AccountName), accountname);

	k = NULL;

	// Find the link
	FUNC8(h->LinkList);
	{
		for (i = 0;i < FUNC5(h->LinkList);i++)
		{
			LINK *kk = FUNC4(h->LinkList, i);
			FUNC6(kk->lock);
			{
				if (FUNC14(kk->Option->AccountName, accountname) == 0)
				{
					k = kk;
					FUNC0(kk->ref);
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

	if (k == NULL)
	{
		// Specified link is not found
		FUNC9(h);

		return ERR_OBJECT_NOT_FOUND;
	}

	// Get status information from session
	FUNC6(k->lock);
	{
		sess = k->ClientSession;
		if (sess != NULL)
		{
			FUNC0(sess->ref);
		}
	}
	FUNC16(k->lock);

	if (sess != NULL && k->Offline == false)
	{
		FUNC1(&t->Status, sess);
	}
	else
	{
		ret = ERR_LINK_IS_OFFLINE;
	}
	FUNC11(sess);

	FUNC10(k);
	FUNC9(h);

	return ret;
}
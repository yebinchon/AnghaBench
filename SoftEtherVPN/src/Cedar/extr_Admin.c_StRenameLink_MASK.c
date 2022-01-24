#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_22__ {int ServerAdmin; TYPE_2__* Server; } ;
struct TYPE_21__ {int /*<<< orphan*/  LinkList; } ;
struct TYPE_20__ {TYPE_1__* Option; int /*<<< orphan*/  lock; int /*<<< orphan*/  ref; } ;
struct TYPE_19__ {int /*<<< orphan*/  NewAccountName; int /*<<< orphan*/  OldAccountName; int /*<<< orphan*/  HubName; } ;
struct TYPE_18__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_17__ {int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ RPC_RENAME_LINK ;
typedef  TYPE_4__ LINK ;
typedef  TYPE_5__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_6__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,TYPE_5__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 scalar_t__ ERR_HUB_NOT_FOUND ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_LINK_ALREADY_EXISTS ; 
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
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 scalar_t__ SERVER_TYPE_STANDALONE ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

UINT FUNC16(ADMIN *a, RPC_RENAME_LINK *t)
{
	UINT i;
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;
	UINT ret = ERR_NO_ERROR;
	LINK *k;
	bool exists = false;

	if (FUNC11(t->OldAccountName) || FUNC11(t->NewAccountName))
	{
		return ERR_INVALID_PARAMETER;
	}

	if (s->ServerType != SERVER_TYPE_STANDALONE)
	{
		return ERR_NOT_SUPPORTED;
	}

	CHECK_RIGHT;

	if (FUNC12(t->NewAccountName, t->OldAccountName) == 0)
	{
		// Noop if new name is same to old name
		return ERR_NO_ERROR;
	}

	h = FUNC2(c, t->HubName);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	if (a->ServerAdmin == false && FUNC3(h, "no_cascade") != 0)
	{
		FUNC9(h);
		return ERR_NOT_ENOUGH_RIGHT;
	}

	k = NULL;

	// Find specified link
	FUNC8(h->LinkList);
	{
		for (i = 0;i < FUNC6(h->LinkList);i++)
		{
			LINK *kk = FUNC5(h->LinkList, i);
			FUNC7(kk->lock);
			{
				if (FUNC12(kk->Option->AccountName, t->OldAccountName) == 0)
				{
					k = kk;
					FUNC1(kk->ref);
				}
			}
			FUNC14(kk->lock);

			if (k != NULL)
			{
				break;
			}
		}

		exists = false;

		if (k != NULL)
		{
			// Check whether the new link name is same to other links 
			for (i = 0;i < FUNC6(h->LinkList);i++)
			{
				LINK *kk = FUNC5(h->LinkList, i);
				FUNC7(kk->lock);
				{
					if (FUNC12(kk->Option->AccountName, t->NewAccountName) == 0)
					{
						// duplicated
						exists = true;
					}
				}
				FUNC14(kk->lock);
			}

			if (exists)
			{
				// Already same name exists
				ret = ERR_LINK_ALREADY_EXISTS;
			}
			else
			{
				// Do rename
				FUNC13(k->Option->AccountName, sizeof(k->Option->AccountName), t->NewAccountName);

				FUNC0(a, h, "LA_RENAME_LINK", t->OldAccountName, t->NewAccountName);

				FUNC4(s);
			}
		}
	}
	FUNC15(h->LinkList);

	if (k == NULL)
	{
		// specified link is not found
		FUNC9(h);
		return ERR_OBJECT_NOT_FOUND;
	}

	FUNC10(k);

	FUNC9(h);

	return ret;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  hubname ;
typedef  scalar_t__ UINT ;
struct TYPE_26__ {TYPE_2__* Server; } ;
struct TYPE_25__ {int Me; } ;
struct TYPE_24__ {scalar_t__ Type; int /*<<< orphan*/  lock_online; TYPE_1__* SecureNAT; } ;
struct TYPE_23__ {int NumItem; int /*<<< orphan*/  HubName; } ;
struct TYPE_22__ {int /*<<< orphan*/  FarmMemberList; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_21__ {int /*<<< orphan*/  Nat; } ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ RPC_ENUM_NAT ;
typedef  TYPE_4__ HUB ;
typedef  TYPE_5__ FARM_MEMBER ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_6__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_3__*,int) ; 
 scalar_t__ ERR_HUB_NOT_FOUND ; 
 scalar_t__ ERR_NOT_SUPPORTED ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ ERR_SNAT_NOT_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,char*) ; 
 scalar_t__ HUB_TYPE_FARM_DYNAMIC ; 
 scalar_t__ HUB_TYPE_FARM_STATIC ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_5__*,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int) ; 

UINT FUNC17(ADMIN *a, RPC_ENUM_NAT *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;
	UINT ret = ERR_NO_ERROR;
	char hubname[MAX_HUBNAME_LEN + 1];
	UINT i;

	CHECK_RIGHT;

	FUNC12(hubname, sizeof(hubname), t->HubName);

	FUNC7(c);
	{
		h = FUNC2(c, t->HubName);
	}
	FUNC14(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	if (h->Type == HUB_TYPE_FARM_STATIC || FUNC3(s, "b_support_securenat") == false)
	{
		FUNC10(h);
		return ERR_NOT_SUPPORTED;
	}

	FUNC6(h->lock_online);
	{
		if (h->SecureNAT == NULL)
		{
			ret = ERR_SNAT_NOT_RUNNING;
		}
		else
		{
			FUNC9(h->SecureNAT->Nat, t);
		}
	}
	FUNC13(h->lock_online);

	if (h->Type == HUB_TYPE_FARM_DYNAMIC)
	{
		if (ret == ERR_SNAT_NOT_RUNNING)
		{
			// Get status of remote SecureNAT
			FUNC8(s->FarmMemberList);
			{
				for (i = 0;i < FUNC5(s->FarmMemberList);i++)
				{
					FARM_MEMBER *f = FUNC4(s->FarmMemberList, i);
					if (f->Me == false)
					{
						RPC_ENUM_NAT tmp;

						FUNC16(&tmp, sizeof(tmp));

						FUNC11(s, f, hubname, &tmp);

						if (tmp.NumItem >= 1)
						{
							FUNC1(t);
							FUNC0(t, &tmp, sizeof(RPC_ENUM_NAT));
							ret = ERR_NO_ERROR;
							break;
						}
						else
						{
							FUNC1(&tmp);
						}
					}
				}
			}
			FUNC15(s->FarmMemberList);
		}
	}

	FUNC10(h);

	ret = ERR_NO_ERROR;

	return ret;
}
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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  hubname ;
typedef  scalar_t__ UINT ;
struct TYPE_25__ {TYPE_2__* Server; } ;
struct TYPE_24__ {int Me; } ;
struct TYPE_23__ {scalar_t__ Type; int /*<<< orphan*/  lock_online; TYPE_1__* SecureNAT; } ;
struct TYPE_22__ {char* HubName; scalar_t__ NumDhcpClients; scalar_t__ NumTcpSessions; scalar_t__ NumUdpSessions; } ;
struct TYPE_21__ {int /*<<< orphan*/  FarmMemberList; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_20__ {int /*<<< orphan*/  Nat; } ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ RPC_NAT_STATUS ;
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
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (TYPE_2__*,char*) ; 
 scalar_t__ HUB_TYPE_FARM_DYNAMIC ; 
 scalar_t__ HUB_TYPE_FARM_STATIC ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_5__*,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int) ; 

UINT FUNC16(ADMIN *a, RPC_NAT_STATUS *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;
	UINT ret = ERR_NO_ERROR;
	char hubname[MAX_HUBNAME_LEN + 1];
	UINT i;

	CHECK_RIGHT;

	FUNC11(hubname, sizeof(hubname), t->HubName);

	FUNC6(c);
	{
		h = FUNC1(c, t->HubName);
	}
	FUNC13(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	if (h->Type == HUB_TYPE_FARM_STATIC || FUNC2(s, "b_support_securenat") == false)
	{
		FUNC9(h);
		return ERR_NOT_SUPPORTED;
	}

	FUNC5(h->lock_online);
	{
		if (h->SecureNAT == NULL)
		{
			ret = ERR_SNAT_NOT_RUNNING;
		}
		else
		{
			FUNC8(h->SecureNAT->Nat, t);
		}
	}
	FUNC12(h->lock_online);

	if (h->Type == HUB_TYPE_FARM_DYNAMIC)
	{
		if (ret == ERR_SNAT_NOT_RUNNING)
		{
			// Get status of remote secureNAT
			FUNC7(s->FarmMemberList);
			{
				for (i = 0;i < FUNC4(s->FarmMemberList);i++)
				{
					FARM_MEMBER *f = FUNC3(s->FarmMemberList, i);
					if (f->Me == false)
					{
						RPC_NAT_STATUS tmp;

						FUNC15(&tmp, sizeof(tmp));

						FUNC10(s, f, hubname, &tmp);

						if (tmp.NumDhcpClients == 0 && tmp.NumTcpSessions == 0 && tmp.NumUdpSessions == 0)
						{
						}
						else
						{
							FUNC0(t, &tmp, sizeof(RPC_NAT_STATUS));
							ret = ERR_NO_ERROR;
							break;
						}
					}
				}
			}
			FUNC14(s->FarmMemberList);
		}
	}

	FUNC9(h);

	FUNC11(t->HubName, sizeof(t->HubName), hubname);
	ret = ERR_NO_ERROR;

	return ret;
}
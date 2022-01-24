#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_18__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_17__ {int Me; } ;
struct TYPE_16__ {int /*<<< orphan*/  IpTable; } ;
struct TYPE_15__ {int /*<<< orphan*/  Key; int /*<<< orphan*/  HubName; } ;
struct TYPE_14__ {scalar_t__ ServerType; int /*<<< orphan*/  FarmMemberList; int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_DELETE_TABLE ;
typedef  int /*<<< orphan*/  IP_TABLE_ENTRY ;
typedef  TYPE_3__ HUB ;
typedef  TYPE_4__ FARM_MEMBER ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_5__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ERR_HUB_NOT_FOUND ; 
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ ERR_OBJECT_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

UINT FUNC14(ADMIN *a, RPC_DELETE_TABLE *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h = NULL;
	UINT ret = ERR_NO_ERROR;

	CHECK_RIGHT;

	FUNC8(c);
	{
		h = FUNC2(c, t->HubName);
	}
	FUNC12(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	if (a->ServerAdmin == false && FUNC3(h, "no_delete_iptable") != 0)
	{
		FUNC10(h);
		return ERR_NOT_ENOUGH_RIGHT;
	}

	FUNC9(h->IpTable);
	{
		if (FUNC4(h->IpTable, t->Key))
		{
			IP_TABLE_ENTRY *e = FUNC7(h->IpTable, t->Key);
			FUNC1(e);
			FUNC0(h->IpTable, e);
		}
		else
		{
			ret = ERR_OBJECT_NOT_FOUND;
		}
	}
	FUNC13(h->IpTable);

	if (ret == ERR_OBJECT_NOT_FOUND)
	{
		if (s->ServerType == SERVER_TYPE_FARM_CONTROLLER)
		{
			UINT i;
			FUNC9(s->FarmMemberList);
			{
				for (i = 0;i < FUNC6(s->FarmMemberList);i++)
				{
					FARM_MEMBER *f = FUNC5(s->FarmMemberList, i);
					if (f->Me == false)
					{
						FUNC11(s, f, t->HubName, t->Key);
						ret = ERR_NO_ERROR;
					}
				}
			}
			FUNC13(s->FarmMemberList);
		}
	}

	FUNC10(h);

	return ret;
}
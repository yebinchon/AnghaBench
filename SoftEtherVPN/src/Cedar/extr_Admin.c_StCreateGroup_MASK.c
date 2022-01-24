#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USERGROUP ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_23__ {int ServerAdmin; TYPE_2__* Server; } ;
struct TYPE_22__ {TYPE_1__* HubDb; } ;
struct TYPE_21__ {int /*<<< orphan*/  Name; int /*<<< orphan*/  Policy; int /*<<< orphan*/  Note; int /*<<< orphan*/  Realname; int /*<<< orphan*/  HubName; } ;
struct TYPE_20__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_19__ {int /*<<< orphan*/  GroupList; } ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ RPC_SET_GROUP ;
typedef  TYPE_4__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_5__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  ERR_GROUP_ALREADY_EXISTS ; 
 int /*<<< orphan*/  ERR_HUB_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERR_NOT_ENOUGH_RIGHT ; 
 int /*<<< orphan*/  ERR_NOT_FARM_CONTROLLER ; 
 int /*<<< orphan*/  ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  ERR_TOO_MANY_GROUP ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

UINT FUNC18(ADMIN *a, RPC_SET_GROUP *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h = NULL;
	UINT ret = ERR_NO_ERROR;

	if (FUNC9(t->Name) || FUNC10(t->Name) == false)
	{
		return ERR_INVALID_PARAMETER;
	}

	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_FARM_CONTROLLER;
	}

	CHECK_RIGHT;

	NO_SUPPORT_FOR_BRIDGE;
	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_SUPPORTED;
	}

	FUNC12(c);
	{
		h = FUNC5(c, t->HubName);
	}
	FUNC17(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	if (a->ServerAdmin == false && FUNC6(h, "no_change_groups") != 0)
	{
		FUNC15(h);
		return ERR_NOT_ENOUGH_RIGHT;
	}

	FUNC3(h);
	{
		if (FUNC2(h, t->Name))
		{
			ret = ERR_GROUP_ALREADY_EXISTS;
		}
		else
		{
			USERGROUP *g = FUNC13(t->Name, t->Realname, t->Note);
			FUNC16(g, t->Policy);

			if ((FUNC11(h->HubDb->GroupList) >= FUNC7(a->Server, "i_max_users_per_hub")) ||
				((FUNC6(h, "max_groups") != 0) && (FUNC11(h->HubDb->GroupList) >= FUNC6(h, "max_groups"))))
			{
				ret = ERR_TOO_MANY_GROUP;
			}
			else
			{
				FUNC1(h, g);
			}

			FUNC14(g);

			FUNC0(a, h, "LA_CREATE_GROUP", t->Name);
		}
	}
	FUNC4(h);

	FUNC15(h);

	FUNC8(s);

	return ret;
}
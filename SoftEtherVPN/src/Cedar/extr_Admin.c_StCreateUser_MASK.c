#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_8__ ;
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USERGROUP ;
struct TYPE_32__ {int /*<<< orphan*/  ExpireTime; } ;
typedef  TYPE_3__ USER ;
typedef  scalar_t__ UINT ;
struct TYPE_37__ {int ServerAdmin; TYPE_4__* Server; } ;
struct TYPE_36__ {TYPE_1__* UserX; } ;
struct TYPE_35__ {TYPE_2__* HubDb; } ;
struct TYPE_34__ {scalar_t__ AuthType; int /*<<< orphan*/  Name; int /*<<< orphan*/  GroupName; int /*<<< orphan*/  Policy; int /*<<< orphan*/  ExpireTime; TYPE_7__* AuthData; int /*<<< orphan*/  Note; int /*<<< orphan*/  Realname; int /*<<< orphan*/  HubName; } ;
struct TYPE_33__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_31__ {int /*<<< orphan*/  UserList; } ;
struct TYPE_30__ {int is_compatible_bit; } ;
typedef  TYPE_4__ SERVER ;
typedef  TYPE_5__ RPC_SET_USER ;
typedef  TYPE_6__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_7__ AUTHUSERCERT ;
typedef  TYPE_8__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_8__*,TYPE_6__*,char*,...) ; 
 scalar_t__ AUTHTYPE_NT ; 
 scalar_t__ AUTHTYPE_RADIUS ; 
 scalar_t__ AUTHTYPE_ROOTCERT ; 
 scalar_t__ AUTHTYPE_USERCERT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,scalar_t__) ; 
 scalar_t__ ERR_GROUP_NOT_FOUND ; 
 scalar_t__ ERR_HUB_NOT_FOUND ; 
 scalar_t__ ERR_INTERNAL_ERROR ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ; 
 scalar_t__ ERR_NOT_RSA_1024 ; 
 scalar_t__ ERR_NOT_SUPPORTED ; 
 scalar_t__ ERR_NOT_SUPPORTED_AUTH_ON_OPENSOURCE ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ ERR_TOO_MANY_USER ; 
 scalar_t__ ERR_TOO_MANY_USERS_CREATED ; 
 scalar_t__ ERR_USER_ALREADY_EXISTS ; 
 int /*<<< orphan*/  GSF_DISABLE_RADIUS_AUTH ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_6__*,char*) ; 
 scalar_t__ FUNC10 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 TYPE_3__* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (TYPE_4__*,int) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

UINT FUNC26(ADMIN *a, RPC_SET_USER *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h = NULL;
	UINT ret = ERR_NO_ERROR;
	USER *u;
	USERGROUP *g = NULL;


	if (FUNC12(t->Name) || FUNC13(t->Name) == false)
	{
		return ERR_INVALID_PARAMETER;
	}

	NO_SUPPORT_FOR_BRIDGE;
	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_SUPPORTED;
	}

	CHECK_RIGHT;

	if (FUNC7(GSF_DISABLE_RADIUS_AUTH) != 0)
	{
		if (t->AuthType == AUTHTYPE_USERCERT || t->AuthType == AUTHTYPE_RADIUS || t->AuthType == AUTHTYPE_ROOTCERT || t->AuthType == AUTHTYPE_NT)
		{
			return ERR_NOT_SUPPORTED_AUTH_ON_OPENSOURCE;
		}
	}

	if (t->AuthType == AUTHTYPE_USERCERT)
	{
		AUTHUSERCERT *c = t->AuthData;
		if (c != NULL && c->UserX != NULL &&
			c->UserX->is_compatible_bit == false)
		{
			return ERR_NOT_RSA_1024;
		}
		if (c == NULL || c->UserX == NULL)
		{
			return ERR_INVALID_PARAMETER;
		}
	}

	if (FUNC13(t->Name) == false)
	{
		return ERR_INVALID_PARAMETER;
	}

	if (FUNC23(t->Name, "*") == 0)
	{
		if (t->AuthType != AUTHTYPE_RADIUS && t->AuthType != AUTHTYPE_NT)
		{
			return ERR_INVALID_PARAMETER;
		}
	}

	FUNC16(c);
	{
		h = FUNC8(c, t->HubName);
	}
	FUNC25(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	if (a->ServerAdmin == false && FUNC9(h, "no_change_users") != 0)
	{
		FUNC19(h);
		return ERR_NOT_ENOUGH_RIGHT;
	}

	u = FUNC17(t->Name, t->Realname, t->Note, t->AuthType, FUNC6(t->AuthData, t->AuthType));
	if (u == NULL)
	{
		FUNC19(h);
		return ERR_INTERNAL_ERROR;
	}

	u->ExpireTime = t->ExpireTime;

	FUNC21(u, t->Policy);

	FUNC4(h);
	{
		if ((FUNC15(h->HubDb->UserList) >= FUNC10(a->Server, "i_max_users_per_hub")) ||
			((FUNC9(h, "max_users") != 0) && (FUNC15(h->HubDb->UserList) >= FUNC9(h, "max_users"))))
		{
			ret = ERR_TOO_MANY_USER;
		}
		else if (FUNC22(s, false))
		{
			ret = ERR_TOO_MANY_USERS_CREATED;
			FUNC0(a, h, "ERR_128");
		}
		else if (FUNC3(h, t->Name))
		{
			ret = ERR_USER_ALREADY_EXISTS;
		}
		else
		{
			if (FUNC24(t->GroupName) != 0)
			{
				g = FUNC2(h, t->GroupName);
				if (g == NULL)
				{
					ret = ERR_GROUP_NOT_FOUND;
				}
			}

			if (ret != ERR_GROUP_NOT_FOUND)
			{
				if (g != NULL)
				{
					FUNC14(u, g);
					FUNC18(g);
				}

				FUNC1(h, u);
				FUNC0(a, h, "LA_CREATE_USER", t->Name);

				FUNC11(s);
			}
		}
	}
	FUNC5(h);

	FUNC20(u);

	FUNC19(h);

	return ret;
}
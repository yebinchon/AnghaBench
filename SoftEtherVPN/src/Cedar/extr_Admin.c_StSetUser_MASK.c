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
typedef  int /*<<< orphan*/  USERGROUP ;
struct TYPE_18__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  UpdatedTime; int /*<<< orphan*/  ExpireTime; void* Note; void* RealName; } ;
typedef  TYPE_2__ USER ;
typedef  scalar_t__ UINT ;
struct TYPE_22__ {int ServerAdmin; TYPE_3__* Server; } ;
struct TYPE_21__ {TYPE_1__* UserX; } ;
struct TYPE_20__ {scalar_t__ AuthType; int /*<<< orphan*/  Name; int /*<<< orphan*/  Policy; int /*<<< orphan*/  ExpireTime; TYPE_5__* AuthData; int /*<<< orphan*/  Note; int /*<<< orphan*/  Realname; int /*<<< orphan*/  GroupName; int /*<<< orphan*/  HubName; } ;
struct TYPE_19__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_17__ {int is_compatible_bit; } ;
typedef  TYPE_3__ SERVER ;
typedef  TYPE_4__ RPC_SET_USER ;
typedef  int /*<<< orphan*/  HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_5__ AUTHUSERCERT ;
typedef  TYPE_6__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ AUTHTYPE_NT ; 
 scalar_t__ AUTHTYPE_RADIUS ; 
 scalar_t__ AUTHTYPE_ROOTCERT ; 
 scalar_t__ AUTHTYPE_USERCERT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,scalar_t__) ; 
 scalar_t__ ERR_GROUP_NOT_FOUND ; 
 scalar_t__ ERR_HUB_NOT_FOUND ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ; 
 scalar_t__ ERR_NOT_RSA_1024 ; 
 scalar_t__ ERR_NOT_SUPPORTED ; 
 scalar_t__ ERR_NOT_SUPPORTED_AUTH_ON_OPENSOURCE ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ ERR_OBJECT_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  GSF_DISABLE_RADIUS_AUTH ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 void* FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 

UINT FUNC27(ADMIN *a, RPC_SET_USER *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h = NULL;
	UINT ret = ERR_NO_ERROR;
	USER *u = NULL;
	USERGROUP *g = NULL;


	if (FUNC11(t->Name) || FUNC12(t->Name) == false)
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

	if (FUNC21(t->Name, "*") == 0)
	{
		if (t->AuthType != AUTHTYPE_RADIUS && t->AuthType != AUTHTYPE_NT)
		{
			return ERR_INVALID_PARAMETER;
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

	FUNC15(c);
	{
		h = FUNC8(c, t->HubName);
	}
	FUNC26(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	if (a->ServerAdmin == false && FUNC9(h, "no_change_users") != 0)
	{
		FUNC17(h);
		return ERR_NOT_ENOUGH_RIGHT;
	}

	FUNC3(h);
	{
		u = FUNC2(h, t->Name);
		if (u == NULL)
		{
			ret = ERR_OBJECT_NOT_FOUND;
		}
		else
		{
			FUNC14(u->lock);
			{
				if (FUNC22(t->GroupName) != 0)
				{
					g = FUNC1(h, t->GroupName);

					if (g != NULL)
					{
						FUNC13(u, g);
						FUNC16(g);
					}
					else
					{
						ret = ERR_GROUP_NOT_FOUND;
					}
				}
				else
				{
					FUNC13(u, NULL);
				}

				if (ret != ERR_GROUP_NOT_FOUND)
				{
					FUNC6(u->RealName);
					FUNC6(u->Note);
					u->RealName = FUNC24(t->Realname);
					u->Note = FUNC24(t->Note);
					FUNC19(u, t->AuthType, FUNC5(t->AuthData, t->AuthType));
					u->ExpireTime = t->ExpireTime;
					u->UpdatedTime = FUNC23();

					FUNC20(u, t->Policy);
				}
			}
			FUNC25(u->lock);

			FUNC10(s);

			FUNC18(u);
		}
	}
	FUNC4(h);

	if (ret == ERR_NO_ERROR)
	{
		FUNC0(a, h, "LA_SET_USER", t->Name);
	}

	FUNC17(h);

	return ret;
}
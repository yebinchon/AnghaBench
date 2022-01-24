#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  hubname ;
typedef  int /*<<< orphan*/  USERGROUP ;
struct TYPE_11__ {char* GroupName; int /*<<< orphan*/  lock; int /*<<< orphan*/ * Policy; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  NumLogin; int /*<<< orphan*/  AuthData; int /*<<< orphan*/  AuthType; int /*<<< orphan*/  ExpireTime; int /*<<< orphan*/  UpdatedTime; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  Note; int /*<<< orphan*/  RealName; } ;
typedef  TYPE_1__ USER ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_14__ {TYPE_2__* Server; } ;
struct TYPE_13__ {char* Name; char* HubName; char* GroupName; int /*<<< orphan*/  Policy; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  NumLogin; int /*<<< orphan*/  AuthType; int /*<<< orphan*/  AuthData; int /*<<< orphan*/  ExpireTime; int /*<<< orphan*/  UpdatedTime; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  Note; int /*<<< orphan*/  Realname; } ;
struct TYPE_12__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
typedef  int /*<<< orphan*/  TRAFFIC ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ RPC_SET_USER ;
typedef  int /*<<< orphan*/  HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_4__ ADMIN ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_HUB_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  ERR_OBJECT_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/  MAX_USERNAME_LEN ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int) ; 

UINT FUNC19(ADMIN *a, RPC_SET_USER *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h = NULL;
	UINT ret = ERR_NO_ERROR;
	USER *u = NULL;
	USERGROUP *g = NULL;
	char name[MAX_USERNAME_LEN + 1];
	char hubname[MAX_HUBNAME_LEN + 1];
	FUNC14(name, sizeof(name), t->Name);
	FUNC14(hubname, sizeof(hubname), t->HubName);

	if (FUNC8(t->Name) || FUNC9(t->Name) == false)
	{
		return ERR_INVALID_PARAMETER;
	}

	CHECK_RIGHT;
	NO_SUPPORT_FOR_BRIDGE;
	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_SUPPORTED;
	}

	FUNC6(t);
	FUNC18(t, sizeof(RPC_SET_USER));
	FUNC14(t->HubName, sizeof(t->HubName), hubname);
	FUNC14(t->Name, sizeof(t->Name), name);

	FUNC11(c);
	{
		h = FUNC7(c, hubname);
	}
	FUNC17(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	FUNC1(h);
	{
		u = FUNC0(h, name);
		if (u == NULL)
		{
			ret = ERR_OBJECT_NOT_FOUND;
		}
		else
		{
			FUNC10(u->lock);
			{
				FUNC14(t->GroupName, sizeof(t->GroupName), u->GroupName);
				FUNC15(t->Realname, sizeof(t->Realname), u->RealName);
				FUNC15(t->Note, sizeof(t->Note), u->Note);
				t->CreatedTime = u->CreatedTime;
				t->UpdatedTime = u->UpdatedTime;
				t->ExpireTime = u->ExpireTime;

				t->AuthType = u->AuthType;
				t->AuthData = FUNC5(u->AuthData, t->AuthType);
				t->NumLogin = u->NumLogin;
				FUNC4(&t->Traffic, u->Traffic, sizeof(TRAFFIC));
				if (u->Policy != NULL)
				{
					t->Policy = FUNC3(u->Policy);
				}
			}
			FUNC16(u->lock);

			FUNC13(u);
		}
	}
	FUNC2(h);

	FUNC12(h);

	return ret;
}
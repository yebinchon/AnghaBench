#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hubname ;
struct TYPE_20__ {char* Name; char* GroupName; int /*<<< orphan*/  lock; int /*<<< orphan*/  ExpireTime; int /*<<< orphan*/  Traffic; TYPE_1__* Policy; int /*<<< orphan*/  NumLogin; int /*<<< orphan*/  LastLoginTime; int /*<<< orphan*/  AuthType; int /*<<< orphan*/  Note; int /*<<< orphan*/  RealName; } ;
typedef  TYPE_3__ USER ;
typedef  int UINT ;
struct TYPE_25__ {TYPE_4__* Server; } ;
struct TYPE_24__ {TYPE_2__* HubDb; } ;
struct TYPE_23__ {char* HubName; int NumUser; TYPE_5__* Users; } ;
struct TYPE_22__ {char* Name; char* GroupName; int DenyAccess; int IsTrafficFilled; int IsExpiresFilled; int /*<<< orphan*/  Expires; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  NumLogin; int /*<<< orphan*/  LastLoginTime; int /*<<< orphan*/  AuthType; int /*<<< orphan*/  Note; int /*<<< orphan*/  Realname; } ;
struct TYPE_21__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_19__ {int /*<<< orphan*/  UserList; } ;
struct TYPE_18__ {scalar_t__ Access; } ;
typedef  int /*<<< orphan*/  TRAFFIC ;
typedef  TYPE_4__ SERVER ;
typedef  TYPE_5__ RPC_ENUM_USER_ITEM ;
typedef  TYPE_6__ RPC_ENUM_USER ;
typedef  TYPE_7__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_8__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int ERR_HUB_NOT_FOUND ; 
 int ERR_NOT_SUPPORTED ; 
 int ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,int) ; 
 TYPE_5__* FUNC16 (int) ; 

UINT FUNC17(ADMIN *a, RPC_ENUM_USER *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h = NULL;
	UINT ret = ERR_NO_ERROR;
	char hubname[MAX_HUBNAME_LEN + 1];
	UINT i, num;

	CHECK_RIGHT;
	NO_SUPPORT_FOR_BRIDGE;
	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_SUPPORTED;
	}

	FUNC7(c);
	{
		h = FUNC2(c, t->HubName);
	}
	FUNC13(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	FUNC1(t);

	FUNC10(hubname, sizeof(hubname), t->HubName);

	FUNC15(t, sizeof(RPC_ENUM_USER));
	FUNC10(t->HubName, sizeof(t->HubName), hubname);

	FUNC8(h->HubDb->UserList);
	{
		num = FUNC5(h->HubDb->UserList);

		t->NumUser = num;
		t->Users = FUNC16(sizeof(RPC_ENUM_USER_ITEM) * num);

		for (i = 0;i < num;i++)
		{
			USER *u = FUNC4(h->HubDb->UserList, i);

			FUNC6(u->lock);
			{
				RPC_ENUM_USER_ITEM *e = &t->Users[i];

				FUNC10(e->Name, sizeof(e->Name), u->Name);
				FUNC10(e->GroupName, sizeof(e->GroupName), u->GroupName);
				FUNC11(e->Realname, sizeof(e->Realname), u->RealName);
				FUNC11(e->Note, sizeof(e->Note), u->Note);
				e->AuthType = u->AuthType;
				e->LastLoginTime = u->LastLoginTime;
				e->NumLogin = u->NumLogin;

				if (u->Policy != NULL)
				{
					e->DenyAccess = u->Policy->Access ? false : true;
				}

				FUNC0(&e->Traffic, u->Traffic, sizeof(TRAFFIC));
				e->IsTrafficFilled = true;

				e->Expires = u->ExpireTime;
				e->IsExpiresFilled = true;
			}
			FUNC12(u->lock);
		}
	}
	FUNC14(h->HubDb->UserList);

	FUNC9(h);

	FUNC3(s);

	return ERR_NO_ERROR;
}
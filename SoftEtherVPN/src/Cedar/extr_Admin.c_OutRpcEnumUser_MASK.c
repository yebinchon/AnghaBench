#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_5__ {size_t NumUser; TYPE_1__* Users; int /*<<< orphan*/  HubName; } ;
struct TYPE_4__ {int /*<<< orphan*/  Expires; int /*<<< orphan*/  IsExpiresFilled; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  IsTrafficFilled; int /*<<< orphan*/  DenyAccess; int /*<<< orphan*/  NumLogin; int /*<<< orphan*/  LastLoginTime; int /*<<< orphan*/  AuthType; int /*<<< orphan*/  Note; int /*<<< orphan*/  Realname; int /*<<< orphan*/  GroupName; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ RPC_ENUM_USER_ITEM ;
typedef  TYPE_2__ RPC_ENUM_USER ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

void FUNC8(PACK *p, RPC_ENUM_USER *t)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}
	FUNC3(p, "HubName", t->HubName);

	FUNC7(p, "UserList");
	for (i = 0;i < t->NumUser;i++)
	{
		RPC_ENUM_USER_ITEM *e = &t->Users[i];

		FUNC4(p, "Name", e->Name, i, t->NumUser);
		FUNC4(p, "GroupName", e->GroupName, i, t->NumUser);
		FUNC6(p, "Realname", e->Realname, i, t->NumUser);
		FUNC6(p, "Note", e->Note, i, t->NumUser);
		FUNC2(p, "AuthType", e->AuthType, i, t->NumUser);
		FUNC5(p, "LastLoginTime", e->LastLoginTime, i, t->NumUser);
		FUNC2(p, "NumLogin", e->NumLogin, i, t->NumUser);
		FUNC1(p, "DenyAccess", e->DenyAccess, i, t->NumUser);

		FUNC1(p, "IsTrafficFilled", e->IsTrafficFilled, i, t->NumUser);
		FUNC0(&e->Traffic, p, i, t->NumUser);

		FUNC1(p, "IsExpiresFilled", e->IsExpiresFilled, i, t->NumUser);
		FUNC5(p, "Expires", e->Expires, i, t->NumUser);
	}
	FUNC7(p, NULL);
}
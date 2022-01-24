#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_7__ {int NumUser; TYPE_1__* Users; int /*<<< orphan*/  HubName; } ;
struct TYPE_6__ {void* Expires; void* IsExpiresFilled; int /*<<< orphan*/  Traffic; void* IsTrafficFilled; void* DenyAccess; void* NumLogin; void* LastLoginTime; void* AuthType; int /*<<< orphan*/  Note; int /*<<< orphan*/  Realname; int /*<<< orphan*/  GroupName; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ RPC_ENUM_USER_ITEM ;
typedef  TYPE_2__ RPC_ENUM_USER ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC9 (int) ; 

void FUNC10(RPC_ENUM_USER *t, PACK *p)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC8(t, sizeof(RPC_ENUM_USER));
	FUNC5(p, "HubName", t->HubName, sizeof(t->HubName));
	t->NumUser = FUNC2(p, "Name");
	t->Users = FUNC9(sizeof(RPC_ENUM_USER_ITEM) * t->NumUser);

	for (i = 0;i < t->NumUser;i++)
	{
		RPC_ENUM_USER_ITEM *e = &t->Users[i];

		FUNC6(p, "Name", e->Name, sizeof(e->Name), i);
		FUNC6(p, "GroupName", e->GroupName, sizeof(e->GroupName), i);
		FUNC7(p, "Realname", e->Realname, sizeof(e->Realname), i);
		FUNC7(p, "Note", e->Note, sizeof(e->Note), i);
		e->AuthType = FUNC4(p, "AuthType", i);
		e->LastLoginTime = FUNC3(p, "LastLoginTime", i);
		e->NumLogin = FUNC4(p, "NumLogin", i);
		e->DenyAccess = FUNC1(p, "DenyAccess", i);

		e->IsTrafficFilled = FUNC1(p, "IsTrafficFilled", i);
		FUNC0(&e->Traffic, p, i);

		e->IsExpiresFilled = FUNC1(p, "IsExpiresFilled", i);
		e->Expires = FUNC3(p, "Expires", i);
	}
}
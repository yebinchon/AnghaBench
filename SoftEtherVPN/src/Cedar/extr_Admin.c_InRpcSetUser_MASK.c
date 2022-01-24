#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  Policy; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  NumLogin; int /*<<< orphan*/  Name; int /*<<< orphan*/  AuthType; int /*<<< orphan*/  AuthData; void* ExpireTime; void* UpdatedTime; void* CreatedTime; int /*<<< orphan*/  Note; int /*<<< orphan*/  Realname; int /*<<< orphan*/  GroupName; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_SET_USER ;
typedef  int /*<<< orphan*/  POLICY ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void FUNC10(RPC_SET_USER *t, PACK *p)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC8(t, sizeof(RPC_SET_USER));
	FUNC6(p, "HubName", t->HubName, sizeof(t->HubName));
	FUNC6(p, "Name", t->Name, sizeof(t->Name));
	FUNC6(p, "GroupName", t->GroupName, sizeof(t->GroupName));
	FUNC7(p, "Realname", t->Realname, sizeof(t->Realname));
	FUNC7(p, "Note", t->Note, sizeof(t->Note));
	t->CreatedTime = FUNC5(p, "CreatedTime");
	t->UpdatedTime = FUNC5(p, "UpdatedTime");
	t->ExpireTime = FUNC5(p, "ExpireTime");
	t->AuthData = FUNC0(p, &t->AuthType, t->Name);
	t->NumLogin = FUNC4(p, "NumLogin");
	FUNC2(&t->Traffic, p);

	if (FUNC3(p, "UsePolicy"))
	{
		t->Policy = FUNC9(sizeof(POLICY));
		FUNC1(t->Policy, p);
	}
}
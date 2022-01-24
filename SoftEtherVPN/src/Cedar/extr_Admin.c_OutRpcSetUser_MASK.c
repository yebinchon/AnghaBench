#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * Policy; int /*<<< orphan*/  Traffic; int /*<<< orphan*/  NumLogin; int /*<<< orphan*/  AuthType; int /*<<< orphan*/  AuthData; int /*<<< orphan*/  ExpireTime; int /*<<< orphan*/  UpdatedTime; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  Note; int /*<<< orphan*/  Realname; int /*<<< orphan*/  GroupName; int /*<<< orphan*/  Name; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_SET_USER ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC8(PACK *p, RPC_SET_USER *t)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC5(p, "HubName", t->HubName);
	FUNC5(p, "Name", t->Name);
	FUNC5(p, "GroupName", t->GroupName);
	FUNC7(p, "Realname", t->Realname);
	FUNC7(p, "Note", t->Note);
	FUNC6(p, "CreatedTime", t->CreatedTime);
	FUNC6(p, "UpdatedTime", t->UpdatedTime);
	FUNC6(p, "ExpireTime", t->ExpireTime);
	FUNC0(p, t->AuthData, t->AuthType);
	FUNC4(p, "NumLogin", t->NumLogin);
	FUNC2(p, &t->Traffic);

	if (t->Policy != NULL)
	{
		FUNC3(p, "UsePolicy", true);
		FUNC1(p, t->Policy);
	}
}
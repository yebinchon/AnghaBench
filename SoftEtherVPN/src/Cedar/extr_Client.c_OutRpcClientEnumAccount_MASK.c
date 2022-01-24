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
struct TYPE_5__ {size_t NumItem; TYPE_1__** Items; } ;
struct TYPE_4__ {int /*<<< orphan*/  LastConnectDateTime; int /*<<< orphan*/  UpdateDateTime; int /*<<< orphan*/  CreateDateTime; int /*<<< orphan*/  HubName; int /*<<< orphan*/  Port; int /*<<< orphan*/  Connected; int /*<<< orphan*/  StartupAccount; int /*<<< orphan*/  Active; int /*<<< orphan*/  ProxyType; int /*<<< orphan*/  DeviceName; int /*<<< orphan*/  ProxyName; int /*<<< orphan*/  ServerName; int /*<<< orphan*/  UserName; int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_1__ RPC_CLIENT_ENUM_ACCOUNT_ITEM ;
typedef  TYPE_2__ RPC_CLIENT_ENUM_ACCOUNT ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

void FUNC7(PACK *p, RPC_CLIENT_ENUM_ACCOUNT *e)
{
	UINT i;
	// Validate arguments
	if (e == NULL || p == NULL)
	{
		return;
	}

	FUNC2(p, "NumItem", e->NumItem);

	FUNC6(p, "AccountList");
	for (i = 0;i < e->NumItem;i++)
	{
		RPC_CLIENT_ENUM_ACCOUNT_ITEM *item = e->Items[i];

		FUNC5(p, "AccountName", item->AccountName, i, e->NumItem);
		FUNC3(p, "UserName", item->UserName, i, e->NumItem);
		FUNC3(p, "ServerName", item->ServerName, i, e->NumItem);
		FUNC3(p, "ProxyName", item->ProxyName, i, e->NumItem);
		FUNC3(p, "DeviceName", item->DeviceName, i, e->NumItem);
		FUNC1(p, "ProxyType", item->ProxyType, i, e->NumItem);
		FUNC1(p, "Active", item->Active, i, e->NumItem);
		FUNC1(p, "StartupAccount", item->StartupAccount, i, e->NumItem);
		FUNC0(p, "Connected", item->Connected, i, e->NumItem);
		FUNC1(p, "Port", item->Port, i, e->NumItem);
		FUNC3(p, "HubName", item->HubName, i, e->NumItem);
		FUNC4(p, "CreateDateTime", item->CreateDateTime, i, e->NumItem);
		FUNC4(p, "UpdateDateTime", item->UpdateDateTime, i, e->NumItem);
		FUNC4(p, "LastConnectDateTime", item->LastConnectDateTime, i, e->NumItem);
	}
	FUNC6(p, NULL);
}
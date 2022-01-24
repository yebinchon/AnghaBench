#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_6__ {int NumItem; TYPE_1__** Items; } ;
struct TYPE_5__ {int Active; int StartupAccount; void* LastConnectDateTime; void* UpdateDateTime; void* CreateDateTime; int /*<<< orphan*/  HubName; void* Port; int /*<<< orphan*/  Connected; void* ProxyType; int /*<<< orphan*/  DeviceName; int /*<<< orphan*/  ProxyName; int /*<<< orphan*/  ServerName; int /*<<< orphan*/  UserName; int /*<<< orphan*/  AccountName; } ;
typedef  TYPE_1__ RPC_CLIENT_ENUM_ACCOUNT_ITEM ;
typedef  TYPE_2__ RPC_CLIENT_ENUM_ACCOUNT ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 void* FUNC7 (int) ; 

void FUNC8(RPC_CLIENT_ENUM_ACCOUNT *e, PACK *p)
{
	UINT i;
	// Validate arguments
	if (e == NULL || p == NULL)
	{
		return;
	}

	FUNC6(e, sizeof(RPC_CLIENT_ENUM_ACCOUNT));

	e->NumItem = FUNC3(p, "NumItem");
	e->Items = FUNC7(sizeof(RPC_CLIENT_ENUM_ACCOUNT_ITEM *) * e->NumItem);

	for (i = 0;i < e->NumItem;i++)
	{
		RPC_CLIENT_ENUM_ACCOUNT_ITEM *item = e->Items[i] =
			FUNC7(sizeof(RPC_CLIENT_ENUM_ACCOUNT_ITEM));

		FUNC5(p, "AccountName", item->AccountName, sizeof(item->AccountName), i);
		FUNC4(p, "UserName", item->UserName, sizeof(item->UserName), i);
		FUNC4(p, "ServerName", item->ServerName, sizeof(item->ServerName), i);
		FUNC4(p, "ProxyName", item->ProxyName, sizeof(item->ProxyName), i);
		FUNC4(p, "DeviceName", item->DeviceName, sizeof(item->DeviceName), i);
		item->ProxyType = FUNC2(p, "ProxyType", i);
		item->Active = FUNC2(p, "Active", i) ? true : false;
		item->StartupAccount = FUNC2(p, "StartupAccount", i) ? true : false;
		item->Connected = FUNC0(p, "Connected", i);
		item->Port = FUNC2(p, "Port", i);
		FUNC4(p, "HubName", item->HubName, sizeof(item->HubName), i);
		item->CreateDateTime = FUNC1(p, "CreateDateTime", i);
		item->UpdateDateTime = FUNC1(p, "UpdateDateTime", i);
		item->LastConnectDateTime = FUNC1(p, "LastConnectDateTime", i);
	}
}
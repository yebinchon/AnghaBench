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
struct TYPE_4__ {void* Type; void* ClientBuild; void* ClientVer; void* ServerBuild; void* ServerVer; int /*<<< orphan*/  ClientStr; int /*<<< orphan*/  ServerStr; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  ConnectedTime; void* Port; int /*<<< orphan*/  Ip; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ RPC_CONNECTION_INFO ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

void FUNC5(RPC_CONNECTION_INFO *t, PACK *p)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC4(t, sizeof(RPC_CONNECTION_INFO));
	FUNC3(p, "Name", t->Name, sizeof(t->Name));
	t->Ip = FUNC2(p, "Ip");
	t->Port = FUNC0(p, "Port");
	t->ConnectedTime = FUNC1(p, "ConnectedTime");
	FUNC3(p, "Hostname", t->Hostname, sizeof(t->Hostname));
	FUNC3(p, "ServerStr", t->ServerStr, sizeof(t->ServerStr));
	FUNC3(p, "ClientStr", t->ClientStr, sizeof(t->ClientStr));
	t->ServerVer = FUNC0(p, "ServerVer");
	t->ServerBuild = FUNC0(p, "ServerBuild");
	t->ClientVer = FUNC0(p, "ClientVer");
	t->ClientBuild = FUNC0(p, "ClientBuild");
	t->Type = FUNC0(p, "Type");
}
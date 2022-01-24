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
struct TYPE_3__ {int /*<<< orphan*/  Type; int /*<<< orphan*/  ClientBuild; int /*<<< orphan*/  ClientVer; int /*<<< orphan*/  ServerBuild; int /*<<< orphan*/  ServerVer; int /*<<< orphan*/  ClientStr; int /*<<< orphan*/  ServerStr; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  ConnectedTime; int /*<<< orphan*/  Port; int /*<<< orphan*/  Ip; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ RPC_CONNECTION_INFO ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC4(PACK *p, RPC_CONNECTION_INFO *t)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC2(p, "Name", t->Name);
	FUNC1(p, "Ip", t->Ip);
	FUNC0(p, "Port", t->Port);
	FUNC3(p, "ConnectedTime", t->ConnectedTime);
	FUNC2(p, "Hostname", t->Hostname);
	FUNC2(p, "ServerStr", t->ServerStr);
	FUNC2(p, "ClientStr", t->ClientStr);
	FUNC0(p, "ServerVer", t->ServerVer);
	FUNC0(p, "ServerBuild", t->ServerBuild);
	FUNC0(p, "ClientVer", t->ClientVer);
	FUNC0(p, "ClientBuild", t->ClientBuild);
	FUNC0(p, "Type", t->Type);
}
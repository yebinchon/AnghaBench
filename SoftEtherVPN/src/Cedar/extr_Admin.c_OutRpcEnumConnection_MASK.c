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
struct TYPE_5__ {size_t NumConnection; TYPE_1__* Connections; } ;
struct TYPE_4__ {int /*<<< orphan*/  Type; int /*<<< orphan*/  ConnectedTime; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  Name; int /*<<< orphan*/  Port; int /*<<< orphan*/  Ip; } ;
typedef  TYPE_1__ RPC_ENUM_CONNECTION_ITEM ;
typedef  TYPE_2__ RPC_ENUM_CONNECTION ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

void FUNC5(PACK *p, RPC_ENUM_CONNECTION *t)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC4(p, "ConnectionList");
	for (i = 0;i < t->NumConnection;i++)
	{
		RPC_ENUM_CONNECTION_ITEM *e = &t->Connections[i];

		FUNC1(p, "Ip", e->Ip, i, t->NumConnection);
		FUNC0(p, "Port", e->Port, i, t->NumConnection);
		FUNC2(p, "Name", e->Name, i, t->NumConnection);
		FUNC2(p, "Hostname", e->Hostname, i, t->NumConnection);
		FUNC3(p, "ConnectedTime", e->ConnectedTime, i, t->NumConnection);
		FUNC0(p, "Type", e->Type, i, t->NumConnection);
	}
	FUNC4(p, NULL);
}
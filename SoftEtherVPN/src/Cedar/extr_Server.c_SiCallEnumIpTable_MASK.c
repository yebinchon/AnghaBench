#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_11__ {int /*<<< orphan*/  hostname; } ;
struct TYPE_10__ {size_t NumIpTable; TYPE_1__* IpTables; } ;
struct TYPE_9__ {int RemoteItem; int /*<<< orphan*/  RemoteHostname; } ;
typedef  int /*<<< orphan*/  SERVER ;
typedef  TYPE_2__ RPC_ENUM_IP_TABLE ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_3__ FARM_MEMBER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 

void FUNC7(SERVER *s, FARM_MEMBER *f, char *hubname, RPC_ENUM_IP_TABLE *t)
{
	PACK *p;
	UINT i;
	// Validate arguments
	if (s == NULL || f == NULL || hubname == NULL || t == NULL)
	{
		return;
	}

	p = FUNC2();
	FUNC3(p, "HubName", hubname);

	p = FUNC4(f, p, "enumiptable");

	FUNC6(t, sizeof(RPC_ENUM_IP_TABLE));
	FUNC1(t, p);

	for (i = 0;i < t->NumIpTable;i++)
	{
		t->IpTables[i].RemoteItem = true;
		FUNC5(t->IpTables[i].RemoteHostname, sizeof(t->IpTables[i].RemoteHostname),
			f->hostname);
	}

	FUNC0(p);
}
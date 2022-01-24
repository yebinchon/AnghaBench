#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  scalar_t__ UINT ;
struct TYPE_7__ {int /*<<< orphan*/  SubnetMask; int /*<<< orphan*/  IpAddress; int /*<<< orphan*/  HubName; } ;
struct TYPE_6__ {int /*<<< orphan*/  TableList; int /*<<< orphan*/  IfList; int /*<<< orphan*/  Active; } ;
struct TYPE_5__ {int /*<<< orphan*/  Metric; int /*<<< orphan*/  GatewayAddress; int /*<<< orphan*/  SubnetMask; int /*<<< orphan*/  NetworkAddress; } ;
typedef  TYPE_1__ L3TABLE ;
typedef  TYPE_2__ L3SW ;
typedef  TYPE_3__ L3IF ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,scalar_t__) ; 
 void* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 

void FUNC8(FOLDER *f, L3SW *sw)
{
	UINT i;
	FOLDER *if_folder, *table_folder;
	char tmp[MAX_SIZE];
	// Validate arguments
	if (f == NULL || sw == NULL)
	{
		return;
	}

	// Active flag
	FUNC0(f, "Active", sw->Active);

	// Interface list
	if_folder = FUNC4(f, "InterfaceList");
	for (i = 0;i < FUNC7(sw->IfList);i++)
	{
		L3IF *e = FUNC6(sw->IfList, i);
		FOLDER *ff;

		FUNC5(tmp, sizeof(tmp), "Interface%u", i);
		ff = FUNC4(if_folder, tmp);

		FUNC3(ff, "HubName", e->HubName);
		FUNC2(ff, "IpAddress", e->IpAddress);
		FUNC2(ff, "SubnetMask", e->SubnetMask);
	}

	// Routing table
	table_folder = FUNC4(f, "RoutingTable");
	for (i = 0;i < FUNC7(sw->TableList);i++)
	{
		L3TABLE *e = FUNC6(sw->TableList, i);
		FOLDER *ff;

		FUNC5(tmp, sizeof(tmp), "Entry%u", i);
		ff = FUNC4(table_folder, tmp);

		FUNC2(ff, "NetworkAddress", e->NetworkAddress);
		FUNC2(ff, "SubnetMask", e->SubnetMask);
		FUNC2(ff, "GatewayAddress", e->GatewayAddress);
		FUNC1(ff, "Metric", e->Metric);
	}
}
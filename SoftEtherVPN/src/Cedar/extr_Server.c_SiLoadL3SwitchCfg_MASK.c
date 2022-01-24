#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tbl ;
typedef  int /*<<< orphan*/  name ;
typedef  size_t UINT ;
struct TYPE_8__ {int /*<<< orphan*/  Metric; void* GatewayAddress; void* SubnetMask; void* NetworkAddress; } ;
struct TYPE_7__ {size_t NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  TYPE_2__ L3TABLE ;
typedef  int /*<<< orphan*/  L3SW ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 

void FUNC11(L3SW *sw, FOLDER *f)
{
	UINT i;
	FOLDER *if_folder, *table_folder;
	TOKEN_LIST *t;
	bool active = false;
	// Validate arguments
	if (sw == NULL || f == NULL)
	{
		return;
	}

	active = FUNC1(f, "Active");

	// Interface list
	if_folder = FUNC2(f, "InterfaceList");
	if (if_folder != NULL)
	{
		t = FUNC0(if_folder);
		if (t != NULL)
		{
			for (i = 0;i < t->NumTokens;i++)
			{
				FOLDER *ff = FUNC2(if_folder, t->Token[i]);
				char name[MAX_HUBNAME_LEN + 1];
				UINT ip, subnet;

				FUNC5(ff, "HubName", name, sizeof(name));
				ip = FUNC4(ff, "IpAddress");
				subnet = FUNC4(ff, "SubnetMask");

				{
					FUNC7(sw, name, ip, subnet);
				}
			}
			FUNC6(t);
		}
	}

	// Routing table
	table_folder = FUNC2(f, "RoutingTable");
	if (table_folder != NULL)
	{
		t = FUNC0(table_folder);
		if (t != NULL)
		{
			for (i = 0;i < t->NumTokens;i++)
			{
				FOLDER *ff = FUNC2(table_folder, t->Token[i]);
				L3TABLE tbl;

				FUNC10(&tbl, sizeof(tbl));
				tbl.NetworkAddress = FUNC4(ff, "NetworkAddress");
				tbl.SubnetMask = FUNC4(ff, "SubnetMask");
				tbl.GatewayAddress = FUNC4(ff, "GatewayAddress");
				tbl.Metric = FUNC3(ff, "Metric");

				FUNC8(sw, &tbl);
			}
			FUNC6(t);
		}
	}

	if (active)
	{
		FUNC9(sw);
	}
}
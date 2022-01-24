#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  tbl ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_14__ {TYPE_1__* Server; } ;
struct TYPE_13__ {int /*<<< orphan*/  NetworkAddress; int /*<<< orphan*/  Metric; int /*<<< orphan*/  GatewayAddress; int /*<<< orphan*/  SubnetMask; } ;
struct TYPE_12__ {int /*<<< orphan*/  Name; int /*<<< orphan*/  Metric; int /*<<< orphan*/  GatewayAddress; int /*<<< orphan*/  SubnetMask; int /*<<< orphan*/  NetworkAddress; } ;
struct TYPE_11__ {int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_L3TABLE ;
typedef  TYPE_3__ L3TABLE ;
typedef  int /*<<< orphan*/  L3SW ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_4__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERR_LAYER3_SW_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_LAYER3_TABLE_ADD_FAILED ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SERVER_ADMIN_ONLY ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int) ; 

UINT FUNC9(ADMIN *a, RPC_L3TABLE *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	UINT ret = ERR_NO_ERROR;
	L3SW *sw;

	if (FUNC4(t->NetworkAddress, t->SubnetMask) == false ||
		FUNC3(t->GatewayAddress) == false)
	{
		return ERR_INVALID_PARAMETER;
	}

	SERVER_ADMIN_ONLY;

	NO_SUPPORT_FOR_BRIDGE;

	sw = FUNC6(c, t->Name);

	if (sw == NULL)
	{
		ret = ERR_LAYER3_SW_NOT_FOUND;
	}
	else
	{
		L3TABLE tbl;

		FUNC8(&tbl, sizeof(tbl));
		tbl.NetworkAddress = t->NetworkAddress;
		tbl.SubnetMask = t->SubnetMask;
		tbl.GatewayAddress = t->GatewayAddress;
		tbl.Metric = t->Metric;

		if (FUNC5(sw, &tbl) == false)
		{
			ret = ERR_LAYER3_TABLE_ADD_FAILED;
		}
		else
		{
			char tmp[MAX_SIZE];
			FUNC1(tmp, sizeof(tmp), tbl.NetworkAddress);
			FUNC0(a, NULL, "LA_ADD_L3_TABLE", tmp, t->Name);

			FUNC2(s);
		}

		FUNC7(sw);
	}

	return ret;
}
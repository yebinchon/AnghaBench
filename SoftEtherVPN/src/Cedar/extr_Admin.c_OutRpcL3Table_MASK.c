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
struct TYPE_3__ {int /*<<< orphan*/  Metric; int /*<<< orphan*/  GatewayAddress; int /*<<< orphan*/  SubnetMask; int /*<<< orphan*/  NetworkAddress; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ RPC_L3TABLE ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC3(PACK *p, RPC_L3TABLE *t)
{
	// Validate arguments
	if (p == NULL || t == NULL)
	{
		return;
	}

	FUNC2(p, "Name", t->Name);
	FUNC1(p, "NetworkAddress", t->NetworkAddress);
	FUNC1(p, "SubnetMask", t->SubnetMask);
	FUNC1(p, "GatewayAddress", t->GatewayAddress);
	FUNC0(p, "Metric", t->Metric);
}
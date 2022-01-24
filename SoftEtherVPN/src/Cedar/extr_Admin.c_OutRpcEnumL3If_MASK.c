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
struct TYPE_5__ {size_t NumItem; TYPE_1__* Items; int /*<<< orphan*/  Name; } ;
struct TYPE_4__ {int /*<<< orphan*/  SubnetMask; int /*<<< orphan*/  IpAddress; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_L3IF ;
typedef  TYPE_2__ RPC_ENUM_L3IF ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

void FUNC5(PACK *p, RPC_ENUM_L3IF *t)
{
	UINT i;
	// Validate arguments
	if (p == NULL || t == NULL)
	{
		return;
	}

	FUNC0(p, "NumItem", t->NumItem);
	FUNC2(p, "Name", t->Name);

	FUNC4(p, "L3IFList");
	for (i = 0;i < t->NumItem;i++)
	{
		RPC_L3IF *f = &t->Items[i];

		FUNC3(p, "HubName", f->HubName, i, t->NumItem);
		FUNC1(p, "IpAddress", f->IpAddress, i, t->NumItem);
		FUNC1(p, "SubnetMask", f->SubnetMask, i, t->NumItem);
	}
	FUNC4(p, NULL);
}
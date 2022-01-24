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
typedef  scalar_t__ UINT ;
struct TYPE_6__ {int /*<<< orphan*/  Priority; int /*<<< orphan*/  SubnetMask; int /*<<< orphan*/  Masked; int /*<<< orphan*/  IpAddress; int /*<<< orphan*/  Deny; int /*<<< orphan*/  Id; } ;
struct TYPE_5__ {int /*<<< orphan*/  HubName; int /*<<< orphan*/ * o; } ;
typedef  TYPE_1__ RPC_AC_LIST ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_2__ AC ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

void FUNC8(PACK *p, RPC_AC_LIST *t)
{
	UINT i, num;
	LIST *o;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	o = t->o;
	num = FUNC1(o);

	FUNC3(p, "NumItem", num);

	FUNC6(p, "HubName", t->HubName);

	FUNC7(p, "ACList");
	for (i = 0;i < num;i++)
	{
		AC *ac = FUNC0(o, i);

		FUNC4(p, "Id", ac->Id, i, num);
		FUNC2(p, "Deny", ac->Deny, i, num);
		FUNC5(p, "IpAddress", &ac->IpAddress, i, num);
		FUNC2(p, "Masked", ac->Masked, i, num);

		FUNC5(p, "SubnetMask", &ac->SubnetMask, i, num);

		FUNC4(p, "Priority", ac->Priority, i, num);
	}
	FUNC7(p, NULL);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_9__ {void* Priority; int /*<<< orphan*/  SubnetMask; void* Masked; int /*<<< orphan*/  IpAddress; void* Deny; void* Id; } ;
struct TYPE_8__ {int /*<<< orphan*/ * o; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_AC_LIST ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_2__ AC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 TYPE_2__* FUNC9 (int) ; 

void FUNC10(RPC_AC_LIST *t, PACK *p)
{
	UINT i;
	LIST *o;
	UINT num;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC8(t, sizeof(RPC_AC_LIST));
	o = FUNC2();

	FUNC7(p, "HubName", t->HubName, sizeof(t->HubName));
	num = FUNC4(p, "IpAddress");

	for (i = 0;i < num;i++)
	{
		AC *ac = FUNC9(sizeof(AC));

		ac->Id = FUNC5(p, "Id", i);
		ac->Deny = FUNC3(p, "Deny", i);
		FUNC6(p, "IpAddress", &ac->IpAddress, i);
		ac->Masked = FUNC3(p, "Masked", i);

		if (ac->Masked)
		{
			FUNC6(p, "SubnetMask", &ac->SubnetMask, i);
		}

		ac->Priority = FUNC5(p, "Priority", i);

		FUNC0(o, ac);

		FUNC1(ac);
	}

	t->o = o;
}
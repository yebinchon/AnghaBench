#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_7__ {int /*<<< orphan*/  Descrption; int /*<<< orphan*/  Value; int /*<<< orphan*/  Name; } ;
struct TYPE_6__ {int NumItem; TYPE_2__* Items; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_ADMIN_OPTION ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_2__ ADMIN_OPTION ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 TYPE_2__* FUNC6 (int) ; 

void FUNC7(RPC_ADMIN_OPTION *t, PACK *p)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC5(t, sizeof(RPC_ADMIN_OPTION));
	t->NumItem = FUNC0(p, "Name");
	t->Items = FUNC6(sizeof(ADMIN_OPTION) * t->NumItem);

	FUNC2(p, "HubName", t->HubName, sizeof(t->HubName));

	for (i = 0;i < t->NumItem;i++)
	{
		ADMIN_OPTION *o = &t->Items[i];

		FUNC3(p, "Name", o->Name, sizeof(o->Name), i);
		o->Value = FUNC1(p, "Value", i);
		FUNC4(p, "Descrption", o->Descrption, sizeof(o->Descrption), i);
	}
}
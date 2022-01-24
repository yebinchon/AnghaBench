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
struct TYPE_5__ {int /*<<< orphan*/  Descrption; int /*<<< orphan*/  Value; int /*<<< orphan*/  Name; } ;
struct TYPE_4__ {size_t NumItem; TYPE_2__* Items; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_1__ RPC_ADMIN_OPTION ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_2__ ADMIN_OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

void FUNC6(PACK *p, RPC_ADMIN_OPTION *t)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC0(p, "NumItem", t->NumItem);

	FUNC2(p, "HubName", t->HubName);

	FUNC5(p, "AdminOptionList");
	for (i = 0;i < t->NumItem;i++)
	{
		ADMIN_OPTION *o = &t->Items[i];

		FUNC3(p, "Name", o->Name, i, t->NumItem);
		FUNC1(p, "Value", o->Value, i, t->NumItem);
		FUNC4(p, "Descrption", o->Descrption, i, t->NumItem);
	}
	FUNC5(p, NULL);
}
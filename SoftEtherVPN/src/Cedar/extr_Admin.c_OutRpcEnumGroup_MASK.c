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
struct TYPE_5__ {size_t NumGroup; TYPE_1__* Groups; int /*<<< orphan*/  HubName; } ;
struct TYPE_4__ {int /*<<< orphan*/  DenyAccess; int /*<<< orphan*/  NumUsers; int /*<<< orphan*/  Note; int /*<<< orphan*/  Realname; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ RPC_ENUM_GROUP_ITEM ;
typedef  TYPE_2__ RPC_ENUM_GROUP ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

void FUNC6(PACK *p, RPC_ENUM_GROUP *t)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC2(p, "HubName", t->HubName);

	FUNC5(p, "GroupList");
	for (i = 0;i < t->NumGroup;i++)
	{
		RPC_ENUM_GROUP_ITEM *e = &t->Groups[i];

		FUNC3(p, "Name", e->Name, i, t->NumGroup);
		FUNC4(p, "Realname", e->Realname, i, t->NumGroup);
		FUNC4(p, "Note", e->Note, i, t->NumGroup);
		FUNC1(p, "NumUsers", e->NumUsers, i, t->NumGroup);
		FUNC0(p, "DenyAccess", e->DenyAccess, i, t->NumGroup);
	}
	FUNC5(p, NULL);
}
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
struct TYPE_7__ {int NumGroup; TYPE_1__* Groups; int /*<<< orphan*/  HubName; } ;
struct TYPE_6__ {int /*<<< orphan*/  DenyAccess; int /*<<< orphan*/  NumUsers; int /*<<< orphan*/  Note; int /*<<< orphan*/  Realname; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ RPC_ENUM_GROUP_ITEM ;
typedef  TYPE_2__ RPC_ENUM_GROUP ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC7 (int) ; 

void FUNC8(RPC_ENUM_GROUP *t, PACK *p)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC6(t, sizeof(RPC_ENUM_GROUP));
	FUNC3(p, "HubName", t->HubName, sizeof(t->HubName));
	t->NumGroup = FUNC1(p, "Name");
	t->Groups = FUNC7(sizeof(RPC_ENUM_GROUP_ITEM) * t->NumGroup);

	for (i = 0;i < t->NumGroup;i++)
	{
		RPC_ENUM_GROUP_ITEM *e = &t->Groups[i];

		FUNC4(p, "Name", e->Name, sizeof(e->Name), i);
		FUNC5(p, "Realname", e->Realname, sizeof(e->Realname), i);
		FUNC5(p, "Note", e->Note, sizeof(e->Note), i);
		e->NumUsers = FUNC2(p, "NumUsers", i);
		e->DenyAccess = FUNC0(p, "DenyAccess", i);
	}
}
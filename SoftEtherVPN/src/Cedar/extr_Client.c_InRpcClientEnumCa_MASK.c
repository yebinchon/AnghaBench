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
struct TYPE_6__ {int NumItem; TYPE_1__** Items; } ;
struct TYPE_5__ {int /*<<< orphan*/  Expires; int /*<<< orphan*/  IssuerName; int /*<<< orphan*/  SubjectName; int /*<<< orphan*/  Key; } ;
typedef  TYPE_1__ RPC_CLIENT_ENUM_CA_ITEM ;
typedef  TYPE_2__ RPC_CLIENT_ENUM_CA ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 void* FUNC5 (int) ; 

void FUNC6(RPC_CLIENT_ENUM_CA *e, PACK *p)
{
	UINT i;
	// Validate arguments
	if (e == NULL || p == NULL)
	{
		return;
	}

	FUNC4(e, sizeof(RPC_CLIENT_ENUM_CA));
	e->NumItem = FUNC2(p, "NumItem");

	e->Items = FUNC5(sizeof(RPC_CLIENT_ENUM_CA_ITEM *) * e->NumItem);
	for (i = 0;i < e->NumItem;i++)
	{
		RPC_CLIENT_ENUM_CA_ITEM *item = FUNC5(sizeof(RPC_CLIENT_ENUM_CA_ITEM));
		e->Items[i] = item;

		item->Key = FUNC1(p, "Key", i);
		FUNC3(p, "SubjectName", item->SubjectName, sizeof(item->SubjectName), i);
		FUNC3(p, "IssuerName", item->IssuerName, sizeof(item->IssuerName), i);
		item->Expires = FUNC0(p, "Expires", i);
	}
}
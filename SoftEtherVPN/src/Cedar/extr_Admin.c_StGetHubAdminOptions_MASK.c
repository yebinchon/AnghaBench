#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_18__ {TYPE_1__* Server; } ;
struct TYPE_17__ {int /*<<< orphan*/  Name; int /*<<< orphan*/  Descrption; int /*<<< orphan*/  Value; } ;
struct TYPE_16__ {int /*<<< orphan*/  AdminOptionList; int /*<<< orphan*/  Name; } ;
struct TYPE_15__ {int NumItem; TYPE_4__* Items; int /*<<< orphan*/  HubName; } ;
struct TYPE_14__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_ADMIN_OPTION ;
typedef  TYPE_3__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_4__ ADMIN_OPTION ;
typedef  TYPE_5__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_RIGHT ; 
 size_t ERR_HUB_NOT_FOUND ; 
 size_t ERR_NOT_SUPPORTED ; 
 size_t ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 TYPE_4__* FUNC13 (int) ; 

UINT FUNC14(ADMIN *a, RPC_ADMIN_OPTION *t)
{
	UINT i;
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;

	CHECK_RIGHT;

	NO_SUPPORT_FOR_BRIDGE;
	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_SUPPORTED;
	}

	FUNC5(c);
	{
		h = FUNC1(c, t->HubName);
	}
	FUNC10(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	FUNC0(t);
	FUNC12(t, sizeof(RPC_ADMIN_OPTION));

	FUNC8(t->HubName, sizeof(t->HubName), h->Name);

	FUNC6(h->AdminOptionList);
	{
		t->NumItem = FUNC4(h->AdminOptionList);
		t->Items = FUNC13(sizeof(ADMIN_OPTION) * t->NumItem);

		for (i = 0;i < t->NumItem;i++)
		{
			ADMIN_OPTION *a = FUNC3(h->AdminOptionList, i);
			ADMIN_OPTION *e = &t->Items[i];

			FUNC8(e->Name, sizeof(e->Name), a->Name);
			e->Value = a->Value;
			FUNC9(e->Descrption, sizeof(e->Descrption), FUNC2(e->Name));
		}
	}
	FUNC11(h->AdminOptionList);

	FUNC7(h);

	return ERR_NO_ERROR;
}
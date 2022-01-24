#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_22__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_21__ {int /*<<< orphan*/  Value; int /*<<< orphan*/  Name; } ;
struct TYPE_20__ {int /*<<< orphan*/  CurrentVersion; int /*<<< orphan*/  Name; int /*<<< orphan*/  AdminOptionList; } ;
struct TYPE_19__ {scalar_t__ NumItem; TYPE_4__* Items; int /*<<< orphan*/  HubName; } ;
struct TYPE_18__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_ADMIN_OPTION ;
typedef  TYPE_3__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_4__ ADMIN_OPTION ;
typedef  TYPE_5__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 size_t ERR_HUB_NOT_FOUND ; 
 size_t ERR_NOT_ENOUGH_RIGHT ; 
 size_t ERR_NOT_SUPPORTED ; 
 size_t ERR_NO_ERROR ; 
 size_t ERR_TOO_MANT_ITEMS ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_HUB_ADMIN_OPTIONS ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC14 (int) ; 

UINT FUNC15(ADMIN *a, RPC_ADMIN_OPTION *t)
{
	UINT i;
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;

	bool not_server_admin = false;


	if (t->NumItem > MAX_HUB_ADMIN_OPTIONS)
	{
		return ERR_TOO_MANT_ITEMS;
	}

	NO_SUPPORT_FOR_BRIDGE;
	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_SUPPORTED;
	}

	CHECK_RIGHT;

	if (a->ServerAdmin == false)
	{
		not_server_admin = true;
	}

	FUNC7(c);
	{
		h = FUNC3(c, t->HubName);
	}
	FUNC12(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	if (FUNC4(h, "allow_hub_admin_change_option") == false
		&& not_server_admin)
	{
		// Insufficient permission
		FUNC9(h);

		return ERR_NOT_ENOUGH_RIGHT;
	}

	FUNC8(h->AdminOptionList);
	{
		FUNC2(h, false);

		for (i = 0;i < t->NumItem;i++)
		{
			ADMIN_OPTION *e = &t->Items[i];
			ADMIN_OPTION *a = FUNC14(sizeof(ADMIN_OPTION));

			FUNC11(a->Name, sizeof(a->Name), e->Name);
			a->Value = e->Value;

			FUNC6(h->AdminOptionList, a);
		}

		FUNC1(h, false);
	}
	FUNC13(h->AdminOptionList);

	FUNC0(a, NULL, "LA_SET_HUB_ADMIN_OPTION", h->Name);

	h->CurrentVersion++;
	FUNC10(h);

	FUNC9(h);

	FUNC5(s);

	return ERR_NO_ERROR;
}
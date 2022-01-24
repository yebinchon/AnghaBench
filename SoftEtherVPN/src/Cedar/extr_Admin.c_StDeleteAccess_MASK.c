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
typedef  scalar_t__ UINT ;
struct TYPE_22__ {scalar_t__ Id; } ;
struct TYPE_21__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_20__ {int /*<<< orphan*/  AccessList; } ;
struct TYPE_19__ {scalar_t__ Id; int /*<<< orphan*/  HubName; } ;
struct TYPE_18__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_DELETE_ACCESS ;
typedef  TYPE_3__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_4__ ADMIN ;
typedef  TYPE_5__ ACCESS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ ERR_HUB_NOT_FOUND ; 
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ; 
 scalar_t__ ERR_NOT_FARM_CONTROLLER ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ ERR_OBJECT_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_5__* FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_ACCESSLISTS ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

UINT FUNC14(ADMIN *a, RPC_DELETE_ACCESS *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;
	UINT i;
	bool exists;


	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_FARM_CONTROLLER;
	}

	CHECK_RIGHT;
	NO_SUPPORT_FOR_BRIDGE;

	FUNC9(c);
	{
		h = FUNC3(c, t->HubName);
	}
	FUNC12(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	if (a->ServerAdmin == false && FUNC4(h, "no_change_access_list") != 0)
	{
		FUNC11(h);
		return ERR_NOT_ENOUGH_RIGHT;
	}

	exists = false;

	FUNC10(h->AccessList);
	{
		for (i = 0;i < FUNC8(h->AccessList);i++)
		{
			ACCESS *access = FUNC7(h->AccessList, i);

			if ((t->Id < MAX_ACCESSLISTS && access->Id == t->Id) ||
				(t->Id >= MAX_ACCESSLISTS && FUNC5(access) == t->Id))
			{
				FUNC2(access);
				FUNC1(h->AccessList, access);
				exists = true;

				break;
			}
		}
	}
	FUNC13(h->AccessList);

	if (exists == false)
	{
		FUNC11(h);
		return ERR_OBJECT_NOT_FOUND;
	}

	FUNC0(a, h, "LA_DELETE_ACCESS");

	FUNC6(s);

	FUNC11(h);

	return ERR_NO_ERROR;
}
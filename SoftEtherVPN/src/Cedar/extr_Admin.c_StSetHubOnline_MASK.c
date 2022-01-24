#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_19__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_18__ {int /*<<< orphan*/  CurrentVersion; } ;
struct TYPE_17__ {int Online; int /*<<< orphan*/  HubName; } ;
struct TYPE_16__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_SET_HUB_ONLINE ;
typedef  TYPE_3__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_4__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  ERR_HUB_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_NOT_ENOUGH_RIGHT ; 
 int /*<<< orphan*/  ERR_NOT_FARM_CONTROLLER ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

UINT FUNC10(ADMIN *a, RPC_SET_HUB_ONLINE *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;

	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_FARM_CONTROLLER;
	}


	NO_SUPPORT_FOR_BRIDGE;

	CHECK_RIGHT;

	FUNC4(c);
	{
		h = FUNC1(c, t->HubName);
	}
	FUNC9(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	if (a->ServerAdmin == false && t->Online && FUNC2(h, "no_online") != 0)
	{
		FUNC5(h);
		return ERR_NOT_ENOUGH_RIGHT;
	}

	if (a->ServerAdmin == false && t->Online == false && FUNC2(h, "no_offline") != 0)
	{
		FUNC5(h);
		return ERR_NOT_ENOUGH_RIGHT;
	}

	if (t->Online)
	{
		FUNC0(a, h, "LA_SET_HUB_ONLINE");
		FUNC7(h);
	}
	else
	{
		FUNC0(a, h, "LA_SET_HUB_OFFLINE");
		FUNC6(h);
	}

	h->CurrentVersion++;
	FUNC8(h);

	FUNC3(s);

	FUNC5(h);

	return ERR_NO_ERROR;
}
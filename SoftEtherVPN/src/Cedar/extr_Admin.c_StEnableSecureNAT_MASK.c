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
struct TYPE_18__ {scalar_t__ Type; int /*<<< orphan*/  CurrentVersion; } ;
struct TYPE_17__ {int /*<<< orphan*/  HubName; } ;
struct TYPE_16__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_HUB ;
typedef  TYPE_3__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_4__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  ERR_HUB_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_NOT_ENOUGH_RIGHT ; 
 int /*<<< orphan*/  ERR_NOT_FARM_CONTROLLER ; 
 int /*<<< orphan*/  ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*,char*) ; 
 int FUNC4 (TYPE_1__*,char*) ; 
 scalar_t__ HUB_TYPE_FARM_STATIC ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

UINT FUNC10(ADMIN *a, RPC_HUB *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;

	CHECK_RIGHT;


	FUNC6(c);
	{
		h = FUNC2(c, t->HubName);
	}
	FUNC9(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	if (h->Type == HUB_TYPE_FARM_STATIC || FUNC4(s, "b_support_securenat") == false)
	{
		FUNC7(h);
		return ERR_NOT_SUPPORTED;
	}
	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		FUNC7(h);
		return ERR_NOT_FARM_CONTROLLER;
	}

	if (a->ServerAdmin == false && FUNC3(h, "no_securenat") != 0)
	{
		FUNC7(h);
		return ERR_NOT_ENOUGH_RIGHT;
	}

	FUNC0(a, h, "LA_ENABLE_SNAT");

	FUNC1(h, true);

	h->CurrentVersion++;
	FUNC8(h);

	FUNC5(s);

	FUNC7(h);

	return ERR_NO_ERROR;
}
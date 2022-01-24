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
typedef  int /*<<< orphan*/  X ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_18__ {int ServerAdmin; TYPE_2__* Server; } ;
struct TYPE_17__ {TYPE_1__* HubDb; } ;
struct TYPE_16__ {int /*<<< orphan*/  Key; int /*<<< orphan*/  HubName; } ;
struct TYPE_15__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
struct TYPE_14__ {int /*<<< orphan*/  RootCertList; } ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ RPC_HUB_DELETE_CA ;
typedef  TYPE_4__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_5__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,TYPE_4__*,char*) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_HUB_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_NOT_ENOUGH_RIGHT ; 
 int /*<<< orphan*/  ERR_NOT_FARM_CONTROLLER ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  ERR_OBJECT_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

UINT FUNC13(ADMIN *a, RPC_HUB_DELETE_CA *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;
	UINT ret = ERR_NO_ERROR;

	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_FARM_CONTROLLER;
	}

	NO_SUPPORT_FOR_BRIDGE;
	CHECK_RIGHT;

	FUNC8(c);
	{
		h = FUNC3(c, t->HubName);
	}
	FUNC11(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	if (a->ServerAdmin == false && FUNC4(h, "no_change_cert_list") != 0)
	{
		FUNC10(h);
		return ERR_NOT_ENOUGH_RIGHT;
	}

	FUNC9(h->HubDb->RootCertList);
	{
		if (FUNC6(h->HubDb->RootCertList, t->Key))
		{
			X *x = FUNC7(h->HubDb->RootCertList, t->Key);
			FUNC1(h->HubDb->RootCertList, x);
			FUNC2(x);

			FUNC0(a, h, "LA_DELETE_CA");

			FUNC5(s);
		}
		else
		{
			ret = ERR_OBJECT_NOT_FOUND;
		}
	}
	FUNC12(h->HubDb->RootCertList);

	FUNC10(h);

	return ret;
}
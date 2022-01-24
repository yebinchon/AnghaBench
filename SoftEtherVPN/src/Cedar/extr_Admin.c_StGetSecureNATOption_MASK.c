#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hubname ;
struct TYPE_12__ {char* HubName; int ApplyDhcpPushRoutes; } ;
typedef  TYPE_1__ VH_OPTION ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_15__ {TYPE_2__* Server; } ;
struct TYPE_14__ {scalar_t__ Type; char* Name; int /*<<< orphan*/  SecureNATOption; } ;
struct TYPE_13__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_4__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ERR_HUB_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_NOT_FARM_CONTROLLER ; 
 int /*<<< orphan*/  ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (TYPE_2__*,char*) ; 
 scalar_t__ HUB_TYPE_FARM_STATIC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 

UINT FUNC8(ADMIN *a, VH_OPTION *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;
	char hubname[MAX_HUBNAME_LEN + 1];

	FUNC5(hubname, sizeof(hubname), t->HubName);

	CHECK_RIGHT;

	FUNC3(c);
	{
		h = FUNC1(c, t->HubName);
	}
	FUNC6(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	if (h->Type == HUB_TYPE_FARM_STATIC || FUNC2(s, "b_support_securenat") == false)
	{
		FUNC4(h);
		return ERR_NOT_SUPPORTED;
	}
	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		FUNC4(h);
		return ERR_NOT_FARM_CONTROLLER;
	}

	FUNC7(t, sizeof(VH_OPTION));
	FUNC0(t, h->SecureNATOption, sizeof(VH_OPTION));
	FUNC5(t->HubName, sizeof(t->HubName), h->Name);
	t->ApplyDhcpPushRoutes = true;

	FUNC4(h);

	return ERR_NO_ERROR;
}
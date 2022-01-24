#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hubname ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_9__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_8__ {int /*<<< orphan*/  Msg; int /*<<< orphan*/  HubName; } ;
struct TYPE_7__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_MSG ;
typedef  int /*<<< orphan*/  HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_3__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  ERR_HUB_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_MEMORY_NOT_ENOUGH ; 
 int /*<<< orphan*/  ERR_NOT_ENOUGH_RIGHT ; 
 int /*<<< orphan*/  ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ HUB_MAXMSG_LEN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

UINT FUNC7(ADMIN *a, RPC_MSG *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;
	UINT ret = ERR_NO_ERROR;
	char hubname[MAX_HUBNAME_LEN + 1];

	CHECK_RIGHT;
	NO_SUPPORT_FOR_BRIDGE;
	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_SUPPORTED;
	}
	if (FUNC6(t->Msg) > HUB_MAXMSG_LEN)
	{
		return ERR_MEMORY_NOT_ENOUGH;
	}

	FUNC5(hubname, sizeof(hubname), t->HubName);

	h = FUNC0(c, hubname);

	if (h == NULL)
	{
		ret = ERR_HUB_NOT_FOUND;
	}
	else
	{
		if (a->ServerAdmin == false && FUNC1(h, "no_change_msg") != 0)
		{
			ret = ERR_NOT_ENOUGH_RIGHT;
		}
		else
		{
			FUNC4(h, t->Msg);
		}

		FUNC3(h);
	}

	FUNC2(s);

	return ret;
}
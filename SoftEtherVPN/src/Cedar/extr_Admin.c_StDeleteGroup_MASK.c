#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_10__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_9__ {int /*<<< orphan*/  Name; int /*<<< orphan*/  HubName; } ;
struct TYPE_8__ {scalar_t__ ServerType; int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_DELETE_USER ;
typedef  int /*<<< orphan*/  HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_3__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 scalar_t__ ERR_HUB_NOT_FOUND ; 
 scalar_t__ ERR_INVALID_PARAMETER ; 
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ; 
 scalar_t__ ERR_NOT_SUPPORTED ; 
 scalar_t__ ERR_NO_ERROR ; 
 scalar_t__ ERR_OBJECT_NOT_FOUND ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ SERVER_TYPE_FARM_MEMBER ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

UINT FUNC12(ADMIN *a, RPC_DELETE_USER *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h = NULL;
	UINT ret = ERR_NO_ERROR;

	if (FUNC7(t->Name) || FUNC8(t->Name) == false)
	{
		return ERR_INVALID_PARAMETER;
	}

	CHECK_RIGHT;

	NO_SUPPORT_FOR_BRIDGE;
	if (s->ServerType == SERVER_TYPE_FARM_MEMBER)
	{
		return ERR_NOT_SUPPORTED;
	}

	FUNC9(c);
	{
		h = FUNC4(c, t->HubName);
	}
	FUNC11(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	if (a->ServerAdmin == false && FUNC5(h, "no_change_groups") != 0)
	{
		FUNC10(h);
		return ERR_NOT_ENOUGH_RIGHT;
	}

	FUNC2(h);
	{
		if (FUNC1(h, t->Name) == false)
		{
			ret = ERR_OBJECT_NOT_FOUND;
		}
	}
	FUNC3(h);

	if (ret == ERR_NO_ERROR)
	{
		FUNC0(a, h, "LA_DELETE_GROUP", t->Name);
	}

	FUNC10(h);

	FUNC6(s);

	return ret;
}
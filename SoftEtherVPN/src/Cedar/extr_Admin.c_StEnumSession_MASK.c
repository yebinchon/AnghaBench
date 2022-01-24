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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_10__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_9__ {int /*<<< orphan*/  HubName; } ;
struct TYPE_8__ {int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_ENUM_SESSION ;
typedef  int /*<<< orphan*/  HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_3__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  ERR_HUB_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_NOT_ENOUGH_RIGHT ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

UINT FUNC6(ADMIN *a, RPC_ENUM_SESSION *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h = NULL;
	UINT ret = ERR_NO_ERROR;

	CHECK_RIGHT;

	FUNC2(c);
	{
		h = FUNC0(c, t->HubName);
	}
	FUNC5(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	if (a->ServerAdmin == false && FUNC1(h, "no_enum_session") != 0)
	{
		FUNC3(h);
		return ERR_NOT_ENOUGH_RIGHT;
	}

	FUNC4(s, t);

	FUNC3(h);

	return ret;
}
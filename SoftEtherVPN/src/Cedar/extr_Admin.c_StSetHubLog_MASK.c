#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_18__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_17__ {int /*<<< orphan*/  CurrentVersion; } ;
struct TYPE_16__ {int /*<<< orphan*/  LogSetting; int /*<<< orphan*/  HubName; } ;
struct TYPE_15__ {int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_HUB_LOG ;
typedef  TYPE_3__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_4__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  ERR_HUB_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_NOT_ENOUGH_RIGHT ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

UINT FUNC9(ADMIN *a, RPC_HUB_LOG *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	HUB *h;

	CHECK_RIGHT;


	FUNC4(c);
	{
		h = FUNC1(c, t->HubName);
	}
	FUNC8(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	if (a->ServerAdmin == false && FUNC2(h, "no_change_log_config") != 0)
	{
		FUNC5(h);
		return ERR_NOT_ENOUGH_RIGHT;
	}

	FUNC0(a, h, "LA_SET_HUB_LOG");

	FUNC6(h, &t->LogSetting,
		(a->ServerAdmin == false && FUNC2(h, "no_change_log_switch_type") != 0));

	h->CurrentVersion++;
	FUNC7(h);

	FUNC5(h);

	FUNC3(s);

	return ERR_NO_ERROR;
}
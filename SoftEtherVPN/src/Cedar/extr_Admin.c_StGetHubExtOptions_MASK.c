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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_15__ {TYPE_1__* Server; } ;
struct TYPE_14__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  Name; int /*<<< orphan*/  Option; } ;
struct TYPE_13__ {int /*<<< orphan*/  HubName; } ;
struct TYPE_12__ {int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_ADMIN_OPTION ;
typedef  TYPE_3__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_4__ ADMIN ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_RIGHT ; 
 int /*<<< orphan*/  ERR_HUB_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 

UINT FUNC10(ADMIN *a, RPC_ADMIN_OPTION *t)
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

	FUNC0(t);
	FUNC9(t, sizeof(RPC_ADMIN_OPTION));

	FUNC6(t->HubName, sizeof(t->HubName), h->Name);

	// Get options
	FUNC3(h->lock);
	{
		FUNC2(t, h->Option, h->Name);
	}
	FUNC7(h->lock);

	FUNC5(h);

	return ERR_NO_ERROR;
}
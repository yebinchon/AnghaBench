#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_16__ {int /*<<< orphan*/  HubList; } ;
struct TYPE_15__ {TYPE_1__* Server; } ;
struct TYPE_14__ {int /*<<< orphan*/  ref; } ;
struct TYPE_13__ {TYPE_4__* Cedar; } ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ HUB ;
typedef  TYPE_3__ FARM_CONTROLLER ;
typedef  TYPE_4__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_2__** FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(FARM_CONTROLLER *f, SOCK *sock)
{
	UINT i;
	HUB **hubs;
	UINT num_hubs;
	CEDAR *c;
	SERVER *s;
	// Validate arguments
	if (f == NULL || sock == NULL)
	{
		return;
	}

	s = f->Server;
	c = s->Cedar;

	// Main process
	FUNC7(f, sock);

	// Stop all Virtual HUBs since the connection to the controller is disconnected
	FUNC4(c->HubList);
	{
		hubs = FUNC8(c->HubList);
		num_hubs = FUNC3(c->HubList);
		for (i = 0;i < num_hubs;i++)
		{
			FUNC0(hubs[i]->ref);
		}
	}
	FUNC9(c->HubList);

	for (i = 0;i < num_hubs;i++)
	{
		FUNC6(hubs[i]);
		FUNC1(c, hubs[i]);
		FUNC5(hubs[i]);
	}

	FUNC2(hubs);
}
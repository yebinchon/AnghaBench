#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_14__ {int /*<<< orphan*/ * HubList; } ;
struct TYPE_13__ {scalar_t__ Type; int /*<<< orphan*/  Name; TYPE_1__* Cedar; } ;
struct TYPE_12__ {int /*<<< orphan*/  Name; } ;
struct TYPE_11__ {scalar_t__ ServerType; int /*<<< orphan*/ * FarmMemberList; } ;
struct TYPE_10__ {TYPE_2__* Server; } ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ HUB_LIST ;
typedef  TYPE_4__ HUB ;
typedef  TYPE_5__ FARM_MEMBER ;

/* Variables and functions */
 scalar_t__ HUB_TYPE_FARM_STATIC ; 
 void* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(HUB *h)
{
	SERVER *s;
	UINT i;
	// Validate arguments
	if (h == NULL || h->Cedar->Server == NULL || h->Cedar->Server->ServerType != SERVER_TYPE_FARM_CONTROLLER)
	{
		// Process only on the farm controller
		return;
	}

	s = h->Cedar->Server;

	if (s->FarmMemberList == NULL)
	{
		return;
	}

	FUNC2(s->FarmMemberList);
	{
		if (h->Type == HUB_TYPE_FARM_STATIC)
		{
			// Static HUB
			// Create the HUB on all members
			for (i = 0;i < FUNC1(s->FarmMemberList);i++)
			{
				UINT j;
				bool exists = false;
				FARM_MEMBER *f = FUNC0(s->FarmMemberList, i);

				FUNC2(f->HubList);
				{
					for (j = 0;j < FUNC1(f->HubList);j++)
					{
						HUB_LIST *hh = FUNC0(f->HubList, j);
						if (FUNC4(hh->Name, h->Name) == 0)
						{
							exists = true;
						}
					}
				}
				FUNC5(f->HubList);

				if (exists == false)
				{
					FUNC3(s, f, h);
				}
			}
		}
	}
	FUNC5(s->FarmMemberList);
}
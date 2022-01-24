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
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  Name; TYPE_1__* Cedar; } ;
struct TYPE_8__ {scalar_t__ ServerType; int /*<<< orphan*/ * FarmMemberList; } ;
struct TYPE_7__ {TYPE_2__* Server; } ;
typedef  TYPE_2__ SERVER ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_3__ HUB ;
typedef  int /*<<< orphan*/  FARM_MEMBER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(HUB *h)
{
	SERVER *s;
	char hubname[MAX_HUBNAME_LEN + 1];
	UINT i;
	LIST *fm_list;
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

	FUNC8(hubname, sizeof(hubname), h->Name);

	fm_list = FUNC5(NULL);

	FUNC4(s->FarmMemberList);
	{
		while (true)
		{
			bool escape = true;

			// Stop the HUB on all members
			for (i = 0;i < FUNC3(s->FarmMemberList);i++)
			{
				FARM_MEMBER *f = FUNC2(s->FarmMemberList, i);

				if (FUNC1(fm_list, f) == false)
				{
					FUNC0(fm_list, f);
					escape = false;

					FUNC7(s, f, h);

					break;
				}
			}

			if (escape)
			{
				break;
			}

			FUNC9(s->FarmMemberList);
			FUNC4(s->FarmMemberList);
		}
	}
	FUNC9(s->FarmMemberList);

	FUNC6(fm_list);
}
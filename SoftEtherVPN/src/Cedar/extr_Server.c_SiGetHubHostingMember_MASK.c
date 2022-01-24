#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
typedef  scalar_t__ UINT ;
struct TYPE_24__ {int /*<<< orphan*/  HubList; scalar_t__ Me; } ;
struct TYPE_23__ {char* Name; scalar_t__ Type; } ;
struct TYPE_22__ {char* Name; } ;
struct TYPE_21__ {int /*<<< orphan*/  FarmMemberList; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ HUB_LIST ;
typedef  TYPE_3__ HUB ;
typedef  TYPE_4__ FARM_MEMBER ;
typedef  int /*<<< orphan*/  CONNECTION ;

/* Variables and functions */
 scalar_t__ HUB_TYPE_FARM_STATIC ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_4__*,TYPE_3__*) ; 
 TYPE_4__* FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

FARM_MEMBER *FUNC10(SERVER *s, HUB *h, bool admin_mode, CONNECTION *c)
{
	FARM_MEMBER *ret = NULL;
	char name[MAX_SIZE];
	UINT i;
	// Validate arguments
	if (s == NULL || h == NULL || c == NULL)
	{
		return NULL;
	}

	FUNC8(name, sizeof(name), h->Name);

	if (h->Type == HUB_TYPE_FARM_STATIC)
	{
		// It is good to select any member in the case of static HUB
		if (admin_mode == false)
		{
			ret = FUNC7(s, c, h);
		}
		else
		{
			UINT i;
			ret = NULL;

			for (i = 0;i < FUNC1(s->FarmMemberList);i++)
			{
				FARM_MEMBER *f = FUNC0(s->FarmMemberList, i);
				if (f->Me)
				{
					ret = f;
					break;
				}
			}
		}
	}
	else
	{
		// Examine whether there is a member that is hosting the HUB already in the case of dynamic HUB
		for (i = 0;i < FUNC1(s->FarmMemberList);i++)
		{
			FARM_MEMBER *f = FUNC0(s->FarmMemberList, i);
			HUB_LIST *hh, t;
			FUNC8(t.Name, sizeof(t.Name), name);
			FUNC2(f->HubList);
			{
				hh = FUNC3(f->HubList, &t);
				if (hh != NULL)
				{
					// Found
					ret = f;
				}
			}
			FUNC9(f->HubList);
		}

		if (ret == NULL)
		{
			// Let host the new HUB
			FARM_MEMBER *f;

			// Select the member to host
			ret = FUNC7(s, c, h);

			f = ret;
			if (f != NULL)
			{
				// HUB creation directive
				FUNC4(s, name);
				FUNC5(s, f, h);
				FUNC6(s, f, h);
			}
		}
	}

	return ret;
}
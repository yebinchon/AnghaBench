#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_12__ {int Me; int /*<<< orphan*/  HubList; } ;
struct TYPE_11__ {int /*<<< orphan*/  Name; } ;
struct TYPE_10__ {int /*<<< orphan*/  Name; } ;
typedef  int /*<<< orphan*/  SERVER ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ HUB_LIST ;
typedef  TYPE_2__ HUB ;
typedef  TYPE_3__ FARM_MEMBER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(SERVER *s, FARM_MEMBER *f, HUB *h)
{
	PACK *p;
	UINT i;
	// Validate arguments
	if (s == NULL || f == NULL)
	{
		return;
	}

	if (f->Me == false)
	{
		p = FUNC6();

		FUNC7(p, "HubName", h->Name);

		p = FUNC8(f, p, "deletehub");
		FUNC2(p);
	}

	FUNC5(f->HubList);
	{
		for (i = 0;i < FUNC4(f->HubList);i++)
		{
			HUB_LIST *hh = FUNC3(f->HubList, i);
			if (FUNC9(hh->Name, h->Name) == 0)
			{
				FUNC1(hh);
				FUNC0(f->HubList, hh);
			}
		}
	}
	FUNC10(f->HubList);
}
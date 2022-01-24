#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_14__ {int Me; int /*<<< orphan*/  HubList; } ;
struct TYPE_13__ {scalar_t__ Type; int /*<<< orphan*/  Name; } ;
struct TYPE_12__ {int DynamicHub; int /*<<< orphan*/  Name; TYPE_3__* FarmMember; } ;
typedef  int /*<<< orphan*/  SERVER ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_1__ HUB_LIST ;
typedef  TYPE_2__ HUB ;
typedef  TYPE_3__ FARM_MEMBER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ HUB_TYPE_FARM_DYNAMIC ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (int) ; 

void FUNC13(SERVER *s, FARM_MEMBER *f, HUB *h)
{
	PACK *p;
	HUB_LIST *hh;
	// Validate arguments
	if (s == NULL || f == NULL)
	{
		return;
	}

	if (f->Me == false)
	{
		p = FUNC6();

		FUNC8(p, h);

		p = FUNC7(f, p, "createhub");
		FUNC2(p);
	}

	hh = FUNC12(sizeof(HUB_LIST));
	hh->DynamicHub = (h->Type == HUB_TYPE_FARM_DYNAMIC ? true : false);
	FUNC10(hh->Name, sizeof(hh->Name), h->Name);
	hh->FarmMember = f;

	FUNC5(f->HubList);
	{
		bool exists = false;
		UINT i;
		for (i = 0;i < FUNC4(f->HubList);i++)
		{
			HUB_LIST *t = FUNC3(f->HubList, i);
			if (FUNC9(t->Name, hh->Name) == 0)
			{
				exists = true;
			}
		}
		if (exists == false)
		{
			FUNC0(f->HubList, hh);
		}
		else
		{
			FUNC1(hh);
		}
	}
	FUNC11(f->HubList);
}
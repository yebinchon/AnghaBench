#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_11__ {int /*<<< orphan*/  HubList; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  Name; int /*<<< orphan*/  ref; } ;
struct TYPE_9__ {TYPE_3__* Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ HUB ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  TYPE_3__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__** FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

void FUNC12(FOLDER *f, SERVER *s)
{
	UINT i;
	FOLDER *hub_folder;
	CEDAR *c;
	UINT num;
	HUB **hubs;
	// Validate arguments
	if (f == NULL || s == NULL)
	{
		return;
	}
	c = s->Cedar;

	FUNC5(c->HubList);
	{
		hubs = FUNC8(c->HubList);
		num = FUNC3(c->HubList);

		for (i = 0;i < num;i++)
		{
			FUNC0(hubs[i]->ref);
		}
	}
	FUNC10(c->HubList);

	for (i = 0;i < num;i++)
	{
		HUB *h = hubs[i];

		FUNC4(h->lock);
		{
			hub_folder = FUNC1(f, h->Name);
			FUNC7(hub_folder, h);
		}
		FUNC9(h->lock);

		FUNC6(h);

		if ((i % 30) == 1)
		{
			FUNC11();
		}
	}

	FUNC2(hubs);
}
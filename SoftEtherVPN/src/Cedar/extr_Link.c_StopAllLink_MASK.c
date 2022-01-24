#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_9__ {int StopAllLinkFlag; int /*<<< orphan*/  LinkList; } ;
struct TYPE_8__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ LINK ;
typedef  TYPE_2__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__** FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(HUB *h)
{
	LINK **link_list;
	UINT num_link;
	UINT i;
	// Validate arguments
	if (h == NULL)
	{
		return;
	}

	h->StopAllLinkFlag = true;

	FUNC3(h->LinkList);
	{
		link_list = FUNC6(h->LinkList);
		num_link = FUNC2(h->LinkList);
		for (i = 0;i < num_link;i++)
		{
			FUNC0(link_list[i]->ref);
		}
	}
	FUNC7(h->LinkList);

	for (i = 0;i < num_link;i++)
	{
		FUNC5(link_list[i]);
		FUNC4(link_list[i]);
	}

	FUNC1(link_list);

	h->StopAllLinkFlag = false;
}
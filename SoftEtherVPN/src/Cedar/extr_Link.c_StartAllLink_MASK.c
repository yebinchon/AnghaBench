#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_6__ {int /*<<< orphan*/  LinkList; } ;
struct TYPE_5__ {int Offline; } ;
typedef  TYPE_1__ LINK ;
typedef  TYPE_2__ HUB ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(HUB *h)
{
	// Validate arguments
	if (h == NULL)
	{
		return;
	}

	FUNC2(h->LinkList);
	{
		UINT i;
		for (i = 0;i < FUNC1(h->LinkList);i++)
		{
			LINK *k = (LINK *)FUNC0(h->LinkList, i);

			if (k->Offline == false)
			{
				FUNC3(k);
			}
		}
	}
	FUNC4(h->LinkList);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  LinkList; } ;
typedef  int /*<<< orphan*/  LINK ;
typedef  TYPE_1__ HUB ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(HUB *hub, LINK *k)
{
	// Validate arguments
	if (hub == NULL || k == NULL)
	{
		return;
	}

	FUNC1(hub->LinkList);
	{
		if (FUNC0(hub->LinkList, k))
		{
			FUNC2(k);
		}
	}
	FUNC3(hub->LinkList);
}
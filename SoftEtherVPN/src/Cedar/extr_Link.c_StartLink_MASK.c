#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  CurrentActiveLinks; } ;
struct TYPE_10__ {int Started; int /*<<< orphan*/  Auth; int /*<<< orphan*/  Option; TYPE_5__* Cedar; int /*<<< orphan*/  ClientSession; scalar_t__ Halting; } ;
struct TYPE_9__ {void* Param; } ;
typedef  TYPE_1__ PACKET_ADAPTER ;
typedef  TYPE_2__ LINK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5(LINK *k)
{
	PACKET_ADAPTER *pa;
	// Validate arguments
	if (k == NULL)
	{
		return;
	}

	FUNC2(k);
	{
		if (k->Started || k->Halting)
		{
			FUNC4(k);
			return;
		}
		k->Started = true;

		FUNC0(k->Cedar->CurrentActiveLinks);
	}
	FUNC4(k);

	// Connect the client session
	pa = FUNC1();
	pa->Param = (void *)k;
	FUNC2(k);
	{
		k->ClientSession = FUNC3(k->Cedar, k->Option, k->Auth, pa, NULL);
	}
	FUNC4(k);
}
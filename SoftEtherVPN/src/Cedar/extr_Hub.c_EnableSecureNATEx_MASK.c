#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ Type; int EnableSecureNAT; int Offline; int /*<<< orphan*/  lock_online; int /*<<< orphan*/  SecureNATOption; int /*<<< orphan*/ * SecureNAT; int /*<<< orphan*/  SessionList; TYPE_2__* Cedar; } ;
struct TYPE_7__ {TYPE_1__* Server; } ;
struct TYPE_6__ {scalar_t__ ServerType; } ;
typedef  TYPE_3__ HUB ;

/* Variables and functions */
 scalar_t__ HUB_TYPE_FARM_DYNAMIC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(HUB *h, bool enable, bool no_change)
{
	bool for_cluster = false;
	// Validate arguments
	if (h == NULL)
	{
		return;
	}

	if (h->Cedar->Server != NULL && h->Cedar->Server->ServerType == SERVER_TYPE_FARM_CONTROLLER)
	{
		if (h->Type == HUB_TYPE_FARM_DYNAMIC)
		{
			for_cluster = true;
		}
	}

	FUNC1(h->lock_online);
	{
		if (no_change == false)
		{
			h->EnableSecureNAT = enable;
		}

		if (h->EnableSecureNAT == false)
		{
STOP:
			// Stop if it's already started
			if (h->SecureNAT != NULL)
			{
				FUNC2(h->SecureNAT);
				h->SecureNAT = NULL;
			}
		}
		else
		{
			if (for_cluster)
			{
				if ((h->SecureNAT != NULL && FUNC0(h->SessionList) <= 1) ||
					(h->SecureNAT == NULL && FUNC0(h->SessionList) == 0))
				{
					// It is in a start mode, but stop when there is no other sessions
					// in the case of dynamic Virtual HUB
					goto STOP;
				}
			}

			// Start if the HUB is online and not started
			if (h->SecureNAT == NULL && h->Offline == false)
			{
				h->SecureNAT = FUNC3(h, h->SecureNATOption);
			}
		}
	}
	FUNC4(h->lock_online);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int Started; int Halting; int /*<<< orphan*/ * ClientSession; TYPE_1__* Cedar; } ;
struct TYPE_6__ {int /*<<< orphan*/  CurrentActiveLinks; } ;
typedef  TYPE_2__ LINK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5(LINK *k)
{
	// Validate arguments
	if (k == NULL)
	{
		return;
	}

	FUNC1(k);
	{
		if (k->Started == false)
		{
			FUNC4(k);
			return;
		}
		k->Started = false;
		k->Halting = true;

		FUNC0(k->Cedar->CurrentActiveLinks);
	}
	FUNC4(k);

	if (k->ClientSession != NULL)
	{
		// Disconnect the client session
		FUNC3(k->ClientSession);

		FUNC1(k);
		{
			FUNC2(k->ClientSession);
			k->ClientSession = NULL;
		}
		FUNC4(k);
	}

	FUNC1(k);
	{
		k->Halting = false;
	}
	FUNC4(k);
}
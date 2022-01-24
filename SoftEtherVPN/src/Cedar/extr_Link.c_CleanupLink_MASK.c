#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * ServerCert; struct TYPE_4__* Policy; int /*<<< orphan*/  Auth; struct TYPE_4__* Option; scalar_t__ ClientSession; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ LINK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(LINK *k)
{
	// Validate arguments
	if (k == NULL)
	{
		return;
	}

	FUNC1(k->lock);
	if (k->ClientSession)
	{
		FUNC4(k->ClientSession);
	}
	FUNC2(k->Option);
	FUNC0(k->Auth);
	FUNC2(k->Policy);

	if (k->ServerCert != NULL)
	{
		FUNC3(k->ServerCert);
	}

	FUNC2(k);
}
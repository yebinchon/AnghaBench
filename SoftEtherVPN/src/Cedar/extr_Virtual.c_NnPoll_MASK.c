#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int SendStateChanged; int /*<<< orphan*/  Lock; TYPE_1__* HaltTube; int /*<<< orphan*/  RecvQueue; } ;
struct TYPE_9__ {int /*<<< orphan*/  Ref; } ;
typedef  TYPE_1__ TUBE ;
typedef  int /*<<< orphan*/  PKT ;
typedef  TYPE_2__ NATIVE_NAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(NATIVE_NAT *t)
{
	// Validate arguments
	if (t == NULL)
	{
		return;
	}

	FUNC4(t->RecvQueue);
	{
		while (true)
		{
			PKT *pkt = FUNC2(t->RecvQueue);

			if (pkt == NULL)
			{
				break;
			}

			FUNC6(t, pkt);

			FUNC1(pkt);
		}
	}
	FUNC11(t->RecvQueue);

	if (t->SendStateChanged)
	{
		TUBE *halt_tube = NULL;

		FUNC3(t->Lock);
		{
			if (t->HaltTube != NULL)
			{
				halt_tube = t->HaltTube;

				FUNC0(halt_tube->Ref);
			}
		}
		FUNC10(t->Lock);

		if (halt_tube != NULL)
		{
			FUNC9(halt_tube, true);

			t->SendStateChanged = false;

			FUNC8(halt_tube);
		}
	}

	FUNC7(t);

	FUNC5(t);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_17__ {scalar_t__ Halt; } ;
struct TYPE_16__ {int /*<<< orphan*/  HubList; } ;
struct TYPE_15__ {scalar_t__ Type; scalar_t__ Offline; } ;
struct TYPE_14__ {TYPE_9__* Session; TYPE_1__* Hub; int /*<<< orphan*/  HubName; } ;
struct TYPE_13__ {int Active; int Halt; int Online; int /*<<< orphan*/  Name; TYPE_5__* Cedar; int /*<<< orphan*/  lock; int /*<<< orphan*/ * IfList; } ;
struct TYPE_12__ {int Offline; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  int /*<<< orphan*/  SESSION ;
typedef  int /*<<< orphan*/  LIST ;
typedef  TYPE_2__ L3SW ;
typedef  TYPE_3__ L3IF ;
typedef  TYPE_4__ HUB ;

/* Variables and functions */
 TYPE_4__* FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ HUB_TYPE_FARM_DYNAMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

void FUNC17(THREAD *t, void *param)
{
	L3SW *s;
	bool shutdown_now = false;
	// Validate arguments
	if (t == NULL || param == NULL)
	{
		return;
	}

	s = (L3SW *)param;

	s->Active = true;

	FUNC9(t);

	// Operation start
	FUNC12(s->Cedar, "L3_SWITCH_START", s->Name);

	while (s->Halt == false)
	{
		if (s->Online == false)
		{
			// Because the L3 switch is off-line now,
			// attempt to make it on-line periodically
			FUNC7(s->Cedar->HubList);
			{
				FUNC6(s->lock);
				{
					UINT i;
					UINT n = 0;
					bool all_exists = true;
					if (FUNC5(s->IfList) == 0)
					{
						// Don't operate if there is no interface
						all_exists = false;
					}
					for (i = 0;i < FUNC5(s->IfList);i++)
					{
						L3IF *f = FUNC4(s->IfList, i);
						HUB *h = FUNC0(s->Cedar, f->HubName);

						if (h != NULL)
						{
							if (h->Offline || h->Type == HUB_TYPE_FARM_DYNAMIC)
							{
								all_exists = false;
							}
							else
							{
								n++;
							}
							FUNC10(h);
						}
						else
						{
							all_exists = false;
						}
					}

					if (all_exists && n >= 1)
					{
						// Start the operation because all Virtual HUBs for
						// interfaces are enabled
						FUNC12(s->Cedar, "L3_SWITCH_ONLINE", s->Name);
						FUNC3(s);
						s->Online = true;
					}
				}
				FUNC15(s->lock);
			}
			FUNC16(s->Cedar->HubList);
		}
		else
		{
			// Examine periodically whether all sessions terminated
			UINT i;
			bool any_halted = false;
			LIST *o = NULL;

SHUTDOWN:

			FUNC6(s->lock);
			{
				for (i = 0;i < FUNC5(s->IfList);i++)
				{
					L3IF *f = FUNC4(s->IfList, i);
					if (f->Session->Halt || f->Hub->Offline != false)
					{
						any_halted = true;
						break;
					}
				}

				if (shutdown_now)
				{
					any_halted = true;
				}

				if (any_halted)
				{
					FUNC12(s->Cedar, "L3_SWITCH_OFFLINE", s->Name);
					o = FUNC8(NULL);
					// If there is any terminated session, terminate all sessions
					for (i = 0;i < FUNC5(s->IfList);i++)
					{
						L3IF *f = FUNC4(s->IfList, i);
						FUNC1(o, f->Session);
					}

					// Restore to the offline
					s->Online = false;
				}
			}
			FUNC15(s->lock);

			if (o != NULL)
			{
				UINT i;
				for (i = 0;i < FUNC5(o);i++)
				{
					SESSION *s = FUNC4(o, i);
					FUNC14(s);
				}
				FUNC2(s);
				FUNC11(o);
				o = NULL;
			}
		}

		FUNC13(50);
	}

	if (s->Online != false)
	{
		shutdown_now = true;
		goto SHUTDOWN;
	}

	// Stop the operation
	FUNC12(s->Cedar, "L3_SWITCH_STOP", s->Name);
}
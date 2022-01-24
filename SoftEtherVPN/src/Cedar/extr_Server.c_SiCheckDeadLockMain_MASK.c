#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_9__ ;
typedef  struct TYPE_36__   TYPE_8__ ;
typedef  struct TYPE_35__   TYPE_7__ ;
typedef  struct TYPE_34__   TYPE_6__ ;
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;
typedef  struct TYPE_28__   TYPE_13__ ;
typedef  struct TYPE_27__   TYPE_12__ ;
typedef  struct TYPE_26__   TYPE_11__ ;
typedef  struct TYPE_25__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
struct TYPE_37__ {int /*<<< orphan*/ * lock; } ;
struct TYPE_36__ {int /*<<< orphan*/ * lock; } ;
struct TYPE_35__ {int /*<<< orphan*/ * lock; } ;
struct TYPE_34__ {int /*<<< orphan*/ * lock; } ;
struct TYPE_33__ {int /*<<< orphan*/ * lock; } ;
struct TYPE_32__ {int /*<<< orphan*/ * lock; } ;
struct TYPE_31__ {int /*<<< orphan*/ * lock; } ;
struct TYPE_30__ {int /*<<< orphan*/ * lock; } ;
struct TYPE_29__ {int /*<<< orphan*/ * lock; } ;
struct TYPE_28__ {TYPE_9__* L3SwList; TYPE_8__* LocalBridgeList; TYPE_7__* TrafficDiffList; int /*<<< orphan*/ * TrafficLock; TYPE_6__* CaList; TYPE_5__* ConnectionList; TYPE_12__* ListenerList; TYPE_4__* HubList; } ;
struct TYPE_27__ {int /*<<< orphan*/ * lock; } ;
struct TYPE_26__ {int /*<<< orphan*/  ref; } ;
struct TYPE_25__ {int /*<<< orphan*/ * TasksFromFarmControllerLock; int /*<<< orphan*/ * CapsCacheLock; TYPE_3__* HubCreateHistoryList; TYPE_2__* FarmMemberList; int /*<<< orphan*/ * lock; TYPE_1__* ServerListenerList; TYPE_13__* Cedar; } ;
typedef  TYPE_10__ SERVER ;
typedef  TYPE_11__ LISTENER ;
typedef  TYPE_12__ LIST ;
typedef  TYPE_13__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_12__*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 TYPE_11__* FUNC3 (TYPE_12__*,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_12__*) ; 
 TYPE_12__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_12__*) ; 

void FUNC10(SERVER *s, UINT timeout)
{
	CEDAR *cedar;
	// Validate arguments
	if (s == NULL)
	{
		return;
	}

	//Debug("SiCheckDeadLockMain Start.\n");


	cedar = s->Cedar;

	if (s->ServerListenerList != NULL)
	{
		FUNC2(s->ServerListenerList->lock, timeout, "s->ServerListenerList->lock");
	}

	FUNC2(s->lock, timeout, "s->lock");

	if (s->FarmMemberList != NULL)
	{
		FUNC2(s->FarmMemberList->lock, timeout, "s->FarmMemberList->lock");
	}

	if (s->HubCreateHistoryList != NULL)
	{
		FUNC2(s->HubCreateHistoryList->lock, timeout, "s->HubCreateHistoryList->lock");
	}

	FUNC2(s->CapsCacheLock, timeout, "s->CapsCacheLock");

	FUNC2(s->TasksFromFarmControllerLock, timeout, "s->TasksFromFarmControllerLock");

	if (cedar != NULL)
	{
		if (cedar->HubList != NULL)
		{
			FUNC2(cedar->HubList->lock, timeout, "cedar->HubList->lock");
		}

		if (cedar->ListenerList != NULL)
		{
			UINT i;
			LIST *o = FUNC6(NULL);

			FUNC2(cedar->ListenerList->lock, timeout, "cedar->ListenerList->lock");

			FUNC5(cedar->ListenerList);
			{
				for (i = 0;i < FUNC4(cedar->ListenerList);i++)
				{
					LISTENER *r = FUNC3(cedar->ListenerList, i);

					FUNC1(r->ref);

					FUNC0(o, r);
				}
			}
			FUNC9(cedar->ListenerList);

			for (i = 0;i < FUNC4(o);i++)
			{
				LISTENER *r = FUNC3(o, i);


				FUNC8(r);
			}

			FUNC7(o);
		}

		if (cedar->ConnectionList != NULL)
		{
			FUNC2(cedar->ConnectionList->lock, timeout, "cedar->ConnectionList->lock");
		}

		if (cedar->CaList != NULL)
		{
			FUNC2(cedar->CaList->lock, timeout, "cedar->CaList->lock");
		}

		if (cedar->TrafficLock != NULL)
		{
			FUNC2(cedar->TrafficLock, timeout, "cedar->TrafficLock");
		}

		if (cedar->TrafficDiffList != NULL)
		{
			FUNC2(cedar->TrafficDiffList->lock, timeout, "cedar->TrafficDiffList->lock");
		}

		if (cedar->LocalBridgeList != NULL)
		{
			FUNC2(cedar->LocalBridgeList->lock, timeout, "cedar->LocalBridgeList->lock");
		}

		if (cedar->L3SwList != NULL)
		{
			FUNC2(cedar->L3SwList->lock, timeout, "cedar->L3SwList->lock");
		}
	}

	//Debug("SiCheckDeadLockMain Finish.\n");
}
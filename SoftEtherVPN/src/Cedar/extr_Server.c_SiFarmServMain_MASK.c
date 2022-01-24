#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_23__ {scalar_t__ num_item; } ;
struct TYPE_22__ {int /*<<< orphan*/  HubList; } ;
struct TYPE_21__ {int Halting; TYPE_8__* TaskQueue; int /*<<< orphan*/  TaskPostEvent; int /*<<< orphan*/  HubList; } ;
struct TYPE_20__ {int /*<<< orphan*/  CompleteEvent; int /*<<< orphan*/ * Response; int /*<<< orphan*/ * Request; } ;
struct TYPE_19__ {int Offline; scalar_t__ Type; int /*<<< orphan*/  Name; } ;
struct TYPE_18__ {int DynamicHub; int /*<<< orphan*/  Name; TYPE_5__* FarmMember; } ;
struct TYPE_17__ {scalar_t__ Halt; TYPE_6__* Cedar; } ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  TYPE_1__ SERVER ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_2__ HUB_LIST ;
typedef  TYPE_3__ HUB ;
typedef  TYPE_4__ FARM_TASK ;
typedef  TYPE_5__ FARM_MEMBER ;
typedef  TYPE_6__ CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FIRM_SERV_RECV_PACK_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC4 (TYPE_8__*) ; 
 scalar_t__ HUB_TYPE_FARM_STATIC ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_8__*) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,char*) ; 
 int SERVER_CONTROL_TCP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC21 (int) ; 

void FUNC22(SERVER *server, SOCK *sock, FARM_MEMBER *f)
{
	UINT wait_time = SERVER_CONTROL_TCP_TIMEOUT / 2;
	bool send_noop = false;
	UINT i;
	CEDAR *c;
	// Validate arguments
	if (server == NULL || sock == NULL || f == NULL)
	{
		FUNC1("SiFarmServMain Failed.\n");
		return;
	}

	FUNC1("SiFarmServMain Started.\n");

	c = server->Cedar;

	// Send a directive to create all static HUBs at the stage
	// where the members have been connected to the controller
	FUNC10(c->HubList);
	{
		for (i = 0;i < FUNC9(c->HubList);i++)
		{
			HUB *h = FUNC8(c->HubList, i);
			if (h->Offline == false)
			{
				if (h->Type == HUB_TYPE_FARM_STATIC)
				{
					PACK *p;
					HUB_LIST *hh;
					p = FUNC12();
					FUNC15(p, h);
					FUNC13(p, "taskname", "createhub");
					FUNC7(sock, p);
					FUNC3(p);
					p = FUNC5(sock);
					FUNC3(p);

					p = FUNC12();
					FUNC15(p, h);
					FUNC13(p, "taskname", "updatehub");
					FUNC7(sock, p);
					FUNC3(p);
					p = FUNC5(sock);
					FUNC3(p);

					hh = FUNC21(sizeof(HUB_LIST));
					hh->DynamicHub = false;
					hh->FarmMember = f;
					FUNC16(hh->Name, sizeof(hh->Name), h->Name);
					FUNC10(f->HubList);
					{
						FUNC0(f->HubList, hh);
					}
					FUNC18(f->HubList);
				}
			}
		}
	}
	FUNC18(c->HubList);

	FUNC1("SiFarmServMain: while (true)\n");

	while (true)
	{
		FARM_TASK *t;
		UINT64 tick;

		do
		{
			// Check whether a new task arrived
			FUNC11(f->TaskQueue);
			{
				t = FUNC4(f->TaskQueue);
			}
			FUNC19(f->TaskQueue);

			if (t != NULL)
			{
				// Handle this task
				PACK *p = t->Request;
				bool ret;

				// Transmission
				ret = FUNC7(sock, p);
				send_noop = false;

				if (ret == false)
				{
					// Disconnected
					// Cancel this task
					FUNC14(t->CompleteEvent);
					goto DISCONNECTED;
				}

				// Receive
				p = FUNC6(sock, FIRM_SERV_RECV_PACK_MAX_SIZE);

				t->Response = p;
				FUNC14(t->CompleteEvent);

				if (p == NULL)
				{
					// Avoid infinite loop
					FUNC2(sock);
					goto DISCONNECTED;
				}
			}
		}
		while (t != NULL);

		if (send_noop)
		{
			// Send a NOOP
			PACK *p;
			bool ret;
			p = FUNC12();
			FUNC13(p, "taskname", "noop");

			ret = FUNC7(sock, p);
			FUNC3(p);

			if (ret == false)
			{
				goto DISCONNECTED;
			}

			p = FUNC5(sock);
			if (p == NULL)
			{
				goto DISCONNECTED;
			}

			FUNC3(p);
		}

		tick = FUNC17();

		while (true)
		{
			bool break_flag;
			if ((tick + wait_time) <= FUNC17())
			{
				break;
			}

			FUNC20(f->TaskPostEvent, 250);

			break_flag = false;
			FUNC11(f->TaskQueue);
			{
				if (f->TaskQueue->num_item != 0)
				{
					break_flag = true;
				}
			}
			FUNC19(f->TaskQueue);

			if (break_flag || f->Halting || server->Halt)
			{
				break;
			}
		}
		send_noop = true;
	}

DISCONNECTED:

	FUNC1("SiFarmServMain: DISCONNECTED\n");

	f->Halting = true;
	// Cancel all outstanding tasks
	FUNC11(f->TaskQueue);
	{
		FARM_TASK *t;

		while ((t = FUNC4(f->TaskQueue)))
		{
			FUNC14(t->CompleteEvent);
		}
	}
	FUNC19(f->TaskQueue);
}
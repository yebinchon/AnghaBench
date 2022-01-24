#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  TrafficLock; int /*<<< orphan*/  Traffic; } ;
struct TYPE_10__ {TYPE_4__* Hub; TYPE_1__* Cedar; scalar_t__ ServerMode; int /*<<< orphan*/  TrafficLock; int /*<<< orphan*/  Traffic; } ;
struct TYPE_9__ {int /*<<< orphan*/  Recv; int /*<<< orphan*/  Send; } ;
struct TYPE_8__ {int /*<<< orphan*/  TrafficLock; int /*<<< orphan*/  Traffic; } ;
typedef  int /*<<< orphan*/  TRAFFIC_ENTRY ;
typedef  TYPE_2__ TRAFFIC ;
typedef  TYPE_3__ SESSION ;
typedef  TYPE_4__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(SESSION *s, TRAFFIC *t)
{
	HUB *h;
	TRAFFIC t2;
	// Validate arguments
	if (s == NULL || t == NULL)
	{
		return;
	}

	FUNC2(s->TrafficLock);
	{
		FUNC0(s->Traffic, t);
	}
	FUNC3(s->TrafficLock);

	if (s->ServerMode)
	{
		FUNC1(&t2.Recv, &t->Send, sizeof(TRAFFIC_ENTRY));
		FUNC1(&t2.Send, &t->Recv, sizeof(TRAFFIC_ENTRY));
		FUNC2(s->Cedar->TrafficLock);
		{
			FUNC0(s->Cedar->Traffic, &t2);
		}
		FUNC3(s->Cedar->TrafficLock);

		h = s->Hub;
		FUNC2(h->TrafficLock);
		{
			FUNC0(h->Traffic, &t2);
		}
		FUNC3(h->TrafficLock);
	}
}
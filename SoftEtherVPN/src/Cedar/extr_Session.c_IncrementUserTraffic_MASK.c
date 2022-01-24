#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_9__ ;
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_16__ ;
typedef  struct TYPE_26__   TYPE_15__ ;
typedef  struct TYPE_25__   TYPE_11__ ;
typedef  struct TYPE_24__   TYPE_10__ ;

/* Type definitions */
struct TYPE_35__ {TYPE_7__* Group; int /*<<< orphan*/  lock; int /*<<< orphan*/  Traffic; } ;
typedef  TYPE_8__ USER ;
struct TYPE_31__ {scalar_t__ UnicastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastCount; scalar_t__ BroadcastBytes; } ;
struct TYPE_28__ {scalar_t__ UnicastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastCount; scalar_t__ BroadcastBytes; } ;
struct TYPE_36__ {TYPE_4__ Recv; TYPE_1__ Send; } ;
struct TYPE_34__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  Traffic; } ;
struct TYPE_33__ {scalar_t__ UnicastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastCount; scalar_t__ BroadcastBytes; } ;
struct TYPE_32__ {scalar_t__ UnicastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastCount; scalar_t__ BroadcastBytes; } ;
struct TYPE_30__ {scalar_t__ UnicastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastCount; scalar_t__ BroadcastBytes; } ;
struct TYPE_29__ {scalar_t__ UnicastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastCount; scalar_t__ BroadcastBytes; } ;
struct TYPE_27__ {TYPE_5__ Recv; TYPE_2__ Send; } ;
struct TYPE_26__ {TYPE_6__ Recv; TYPE_3__ Send; } ;
struct TYPE_25__ {int FarmMember; } ;
struct TYPE_24__ {int /*<<< orphan*/  TrafficLock; TYPE_16__* Traffic; TYPE_15__* OldTraffic; } ;
typedef  TYPE_9__ TRAFFIC ;
typedef  TYPE_10__ SESSION ;
typedef  TYPE_11__ HUB ;

/* Variables and functions */
 TYPE_8__* FUNC0 (TYPE_11__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_11__*,char*,int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_15__*,TYPE_16__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*) ; 
 int /*<<< orphan*/  TRAFFIC_DIFF_USER ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(HUB *hub, char *username, SESSION *s)
{
	TRAFFIC report_traffic;
	// Validate arguments
	if (hub == NULL || username == NULL || s == NULL)
	{
		return;
	}

	FUNC6(s->TrafficLock);
	{
		// Calculate the traffic information (difference between last time) to be reported
		report_traffic.Send.BroadcastBytes =
			s->Traffic->Send.BroadcastBytes - s->OldTraffic->Send.BroadcastBytes;
		report_traffic.Send.BroadcastCount =
			s->Traffic->Send.BroadcastCount - s->OldTraffic->Send.BroadcastCount;
		report_traffic.Send.UnicastBytes =
			s->Traffic->Send.UnicastBytes - s->OldTraffic->Send.UnicastBytes;
		report_traffic.Send.UnicastCount =
			s->Traffic->Send.UnicastCount - s->OldTraffic->Send.UnicastCount;
		report_traffic.Recv.BroadcastBytes =
			s->Traffic->Recv.BroadcastBytes - s->OldTraffic->Recv.BroadcastBytes;
		report_traffic.Recv.BroadcastCount =
			s->Traffic->Recv.BroadcastCount - s->OldTraffic->Recv.BroadcastCount;
		report_traffic.Recv.UnicastBytes =
			s->Traffic->Recv.UnicastBytes - s->OldTraffic->Recv.UnicastBytes;
		report_traffic.Recv.UnicastCount =
			s->Traffic->Recv.UnicastCount - s->OldTraffic->Recv.UnicastCount;
		FUNC5(s->OldTraffic, s->Traffic, sizeof(TRAFFIC));

		if (hub->FarmMember == false)
		{
			// Update the user information in the local database if it is not a farm member
			FUNC1(hub);
			{
				USER *u = FUNC0(hub, username);
				if (u != NULL)
				{
					FUNC6(u->lock);
					{
						FUNC3(u->Traffic, &report_traffic);
					}
					FUNC8(u->lock);
					if (u->Group != NULL)
					{
						FUNC6(u->Group->lock);
						{
							FUNC3(u->Group->Traffic, &report_traffic);
						}
						FUNC8(u->Group->lock);
					}
					FUNC7(u);
				}
			}
			FUNC2(hub);
		}
		else
		{
			// Update the traffic difference report list in the case of farm member
			FUNC4(hub, username, TRAFFIC_DIFF_USER, &report_traffic);
		}
	}
	FUNC8(s->TrafficLock);
}
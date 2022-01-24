#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_13__ ;
typedef  struct TYPE_16__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
struct TYPE_25__ {int FarmMember; int /*<<< orphan*/  Name; int /*<<< orphan*/  TrafficLock; TYPE_13__* Traffic; TYPE_12__* OldTraffic; } ;
struct TYPE_21__ {scalar_t__ UnicastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastCount; scalar_t__ BroadcastBytes; } ;
struct TYPE_18__ {scalar_t__ UnicastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastCount; scalar_t__ BroadcastBytes; } ;
struct TYPE_24__ {TYPE_4__ Recv; TYPE_1__ Send; } ;
struct TYPE_23__ {scalar_t__ UnicastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastCount; scalar_t__ BroadcastBytes; } ;
struct TYPE_22__ {scalar_t__ UnicastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastCount; scalar_t__ BroadcastBytes; } ;
struct TYPE_20__ {scalar_t__ UnicastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastCount; scalar_t__ BroadcastBytes; } ;
struct TYPE_19__ {scalar_t__ UnicastCount; scalar_t__ UnicastBytes; scalar_t__ BroadcastCount; scalar_t__ BroadcastBytes; } ;
struct TYPE_17__ {TYPE_5__ Recv; TYPE_2__ Send; } ;
struct TYPE_16__ {TYPE_6__ Recv; TYPE_3__ Send; } ;
typedef  TYPE_7__ TRAFFIC ;
typedef  TYPE_8__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_12__*,TYPE_13__*,int) ; 
 scalar_t__ FUNC2 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRAFFIC_DIFF_HUB ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int) ; 

void FUNC6(HUB *h)
{
	TRAFFIC t;
	// Validate arguments
	if (h == NULL || h->FarmMember == false)
	{
		return;
	}

	FUNC5(&t, sizeof(t));

	FUNC3(h->TrafficLock);
	{
		t.Send.BroadcastBytes =
			h->Traffic->Send.BroadcastBytes - h->OldTraffic->Send.BroadcastBytes;
		t.Send.BroadcastCount =
			h->Traffic->Send.BroadcastCount - h->OldTraffic->Send.BroadcastCount;
		t.Send.UnicastBytes =
			h->Traffic->Send.UnicastBytes - h->OldTraffic->Send.UnicastBytes;
		t.Send.UnicastCount =
			h->Traffic->Send.UnicastCount - h->OldTraffic->Send.UnicastCount;
		t.Recv.BroadcastBytes =
			h->Traffic->Recv.BroadcastBytes - h->OldTraffic->Recv.BroadcastBytes;
		t.Recv.BroadcastCount =
			h->Traffic->Recv.BroadcastCount - h->OldTraffic->Recv.BroadcastCount;
		t.Recv.UnicastBytes =
			h->Traffic->Recv.UnicastBytes - h->OldTraffic->Recv.UnicastBytes;
		t.Recv.UnicastCount =
			h->Traffic->Recv.UnicastCount - h->OldTraffic->Recv.UnicastCount;
		FUNC1(h->OldTraffic, h->Traffic, sizeof(TRAFFIC));
	}
	FUNC4(h->TrafficLock);

	if (FUNC2(&t, sizeof(TRAFFIC)))
	{
		return;
	}

	FUNC0(h, h->Name, TRAFFIC_DIFF_HUB, &t);
}
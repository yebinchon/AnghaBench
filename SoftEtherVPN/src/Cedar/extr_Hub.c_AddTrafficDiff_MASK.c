#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_9__ {int FarmMember; char* Name; TYPE_1__* Cedar; } ;
struct TYPE_8__ {int /*<<< orphan*/  Traffic; int /*<<< orphan*/  Type; void* Name; void* HubName; } ;
struct TYPE_7__ {int /*<<< orphan*/  TrafficDiffList; } ;
typedef  TYPE_2__ TRAFFIC_DIFF ;
typedef  int /*<<< orphan*/  TRAFFIC ;
typedef  TYPE_3__ HUB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_TRAFFIC_DIFF ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int) ; 

void FUNC7(HUB *h, char *name, UINT type, TRAFFIC *traffic)
{
	TRAFFIC_DIFF *d;
	// Validate arguments
	if (h == NULL || h->FarmMember == false || name == NULL || traffic == NULL)
	{
		return;
	}

	if (FUNC3(h->Cedar->TrafficDiffList) > MAX_TRAFFIC_DIFF)
	{
		return;
	}

	d = FUNC6(sizeof(TRAFFIC_DIFF));
	d->HubName = FUNC1(h->Name);
	d->Name = FUNC1(name);
	d->Type = type;
	FUNC0(&d->Traffic, traffic, sizeof(TRAFFIC));

	FUNC4(h->Cedar->TrafficDiffList);
	{
		FUNC2(h->Cedar->TrafficDiffList, d);
	}
	FUNC5(h->Cedar->TrafficDiffList);
}
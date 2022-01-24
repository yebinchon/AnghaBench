#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int MonitorPort; void* GroupnameHash; void* UsernameHash; int /*<<< orphan*/  StormList; TYPE_4__* Session; int /*<<< orphan*/  Now; int /*<<< orphan*/  PacketQueue; int /*<<< orphan*/  Cancel; } ;
struct TYPE_12__ {TYPE_3__* Hub; TYPE_2__* Policy; TYPE_1__* PacketAdapter; int /*<<< orphan*/  GroupName; int /*<<< orphan*/  Username; } ;
struct TYPE_11__ {int /*<<< orphan*/  MonitorList; } ;
struct TYPE_10__ {scalar_t__ MonitorPort; } ;
struct TYPE_9__ {TYPE_5__* Param; } ;
typedef  TYPE_4__ SESSION ;
typedef  TYPE_5__ HUB_PA ;

/* Variables and functions */
 int /*<<< orphan*/  CompareStormList ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC8 (int) ; 

bool FUNC9(SESSION *s)
{
	// Initialize the packet adapter information
	HUB_PA *pa = FUNC8(sizeof(HUB_PA));
	pa->Cancel = FUNC2();
	pa->PacketQueue = FUNC4();
	pa->Now = FUNC5();
	pa->Session = s;
	pa->StormList = FUNC3(CompareStormList);
	pa->UsernameHash = FUNC7(s->Username);
	pa->GroupnameHash = FUNC7(s->GroupName);

	s->PacketAdapter->Param = pa;

	if (s->Policy->MonitorPort)
	{
		// Mark this port as monitoring port
		pa->MonitorPort = true;

		// Add this session to the list of monitoring port of the HUB
		FUNC1(s->Hub->MonitorList);
		{
			FUNC0(s->Hub->MonitorList, s);
		}
		FUNC6(s->Hub->MonitorList);
	}

	return true;
}
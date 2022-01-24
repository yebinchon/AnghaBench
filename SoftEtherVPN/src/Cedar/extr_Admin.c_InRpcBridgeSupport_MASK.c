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
struct TYPE_4__ {void* IsWinPcapNeeded; void* IsBridgeSupportedOs; } ;
typedef  TYPE_1__ RPC_BRIDGE_SUPPORT ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

void FUNC2(RPC_BRIDGE_SUPPORT *t, PACK *p)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC1(t, sizeof(RPC_BRIDGE_SUPPORT));

	t->IsBridgeSupportedOs = FUNC0(p, "IsBridgeSupportedOs");
	t->IsWinPcapNeeded = FUNC0(p, "IsWinPcapNeeded");
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_5__ {int /*<<< orphan*/ * PacketLogConfig; void* PacketLogSwitchType; } ;
struct TYPE_6__ {TYPE_1__ LogSetting; void* NoPromiscuous; int /*<<< orphan*/  DeviceName; } ;
typedef  TYPE_2__ RPC_ADD_DEVICE ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 size_t NUM_PACKET_LOG ; 
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 

void FUNC4(RPC_ADD_DEVICE *t, PACK *p)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC3(t, sizeof(RPC_ADD_DEVICE));
	FUNC2(p, "DeviceName", t->DeviceName, sizeof(t->DeviceName));
	t->NoPromiscuous = FUNC0(p, "NoPromiscuous");
	t->LogSetting.PacketLogSwitchType = FUNC0(p, "PacketLogSwitchType");

	for (i = 0;i < NUM_PACKET_LOG;i++)
	{
		t->LogSetting.PacketLogConfig[i] = FUNC1(p, "PacketLogConfig", i);
	}
}
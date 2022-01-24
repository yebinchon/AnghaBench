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
struct TYPE_5__ {int /*<<< orphan*/ * PacketLogConfig; void* PacketLogSwitchType; void* SavePacketLog; void* SecurityLogSwitchType; void* SaveSecurityLog; } ;
struct TYPE_6__ {TYPE_1__ LogSetting; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_2__ RPC_HUB_LOG ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 size_t NUM_PACKET_LOG ; 
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 

void FUNC5(RPC_HUB_LOG *t, PACK *p)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC4(t, sizeof(RPC_HUB_LOG));
	FUNC3(p, "HubName", t->HubName, sizeof(t->HubName));
	t->LogSetting.SaveSecurityLog = FUNC0(p, "SaveSecurityLog");
	t->LogSetting.SecurityLogSwitchType = FUNC1(p, "SecurityLogSwitchType");
	t->LogSetting.SavePacketLog = FUNC0(p, "SavePacketLog");
	t->LogSetting.PacketLogSwitchType = FUNC1(p, "PacketLogSwitchType");
	for (i = 0;i < NUM_PACKET_LOG;i++)
	{
		t->LogSetting.PacketLogConfig[i] = FUNC2(p, "PacketLogConfig", i);
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_4__ {int /*<<< orphan*/ * PacketLogConfig; int /*<<< orphan*/  PacketLogSwitchType; int /*<<< orphan*/  SavePacketLog; int /*<<< orphan*/  SecurityLogSwitchType; int /*<<< orphan*/  SaveSecurityLog; } ;
struct TYPE_5__ {TYPE_1__ LogSetting; int /*<<< orphan*/  HubName; } ;
typedef  TYPE_2__ RPC_HUB_LOG ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 size_t NUM_PACKET_LOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC4(PACK *p, RPC_HUB_LOG *t)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC3(p, "HubName", t->HubName);
	FUNC0(p, "SaveSecurityLog", t->LogSetting.SaveSecurityLog);
	FUNC1(p, "SecurityLogSwitchType", t->LogSetting.SecurityLogSwitchType);
	FUNC0(p, "SavePacketLog", t->LogSetting.SavePacketLog);
	FUNC1(p, "PacketLogSwitchType", t->LogSetting.PacketLogSwitchType);
	for (i = 0;i < NUM_PACKET_LOG;i++)
	{
		FUNC2(p, "PacketLogConfig", t->LogSetting.PacketLogConfig[i], i, NUM_PACKET_LOG);
	}
}
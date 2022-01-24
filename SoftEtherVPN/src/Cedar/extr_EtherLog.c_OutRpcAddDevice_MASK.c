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
struct TYPE_4__ {int /*<<< orphan*/ * PacketLogConfig; int /*<<< orphan*/  PacketLogSwitchType; } ;
struct TYPE_5__ {TYPE_1__ LogSetting; int /*<<< orphan*/  NoPromiscuous; int /*<<< orphan*/  DeviceName; } ;
typedef  TYPE_2__ RPC_ADD_DEVICE ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 size_t NUM_PACKET_LOG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

void FUNC3(PACK *p, RPC_ADD_DEVICE *t)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC2(p, "DeviceName", t->DeviceName);
	FUNC0(p, "NoPromiscuous", t->NoPromiscuous);
	FUNC0(p, "PacketLogSwitchType", t->LogSetting.PacketLogSwitchType);

	for (i = 0;i < NUM_PACKET_LOG;i++)
	{
		FUNC1(p, "PacketLogConfig", t->LogSetting.PacketLogConfig[i], i, NUM_PACKET_LOG);
	}
}
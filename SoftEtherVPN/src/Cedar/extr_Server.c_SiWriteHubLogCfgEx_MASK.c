#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * PacketLogConfig; int /*<<< orphan*/  PacketLogSwitchType; int /*<<< orphan*/  SavePacketLog; int /*<<< orphan*/  SecurityLogSwitchType; int /*<<< orphan*/  SaveSecurityLog; } ;
typedef  TYPE_1__ HUB_LOG ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 size_t PACKET_LOG_ARP ; 
 size_t PACKET_LOG_DHCP ; 
 size_t PACKET_LOG_ETHERNET ; 
 size_t PACKET_LOG_ICMP ; 
 size_t PACKET_LOG_IP ; 
 size_t PACKET_LOG_TCP ; 
 size_t PACKET_LOG_TCP_CONN ; 
 size_t PACKET_LOG_UDP ; 

void FUNC2(FOLDER *f, HUB_LOG *g, bool el_mode)
{
	// Validate arguments
	if (f == NULL || g == NULL)
	{
		return;
	}

	if (el_mode == false)
	{
		FUNC0(f, "SaveSecurityLog", g->SaveSecurityLog);
		FUNC1(f, "SecurityLogSwitchType", g->SecurityLogSwitchType);
		FUNC0(f, "SavePacketLog", g->SavePacketLog);
	}

	FUNC1(f, "PacketLogSwitchType", g->PacketLogSwitchType);

	FUNC1(f, "PACKET_LOG_TCP_CONN", g->PacketLogConfig[PACKET_LOG_TCP_CONN]);
	FUNC1(f, "PACKET_LOG_TCP", g->PacketLogConfig[PACKET_LOG_TCP]);
	FUNC1(f, "PACKET_LOG_DHCP", g->PacketLogConfig[PACKET_LOG_DHCP]);
	FUNC1(f, "PACKET_LOG_UDP", g->PacketLogConfig[PACKET_LOG_UDP]);
	FUNC1(f, "PACKET_LOG_ICMP", g->PacketLogConfig[PACKET_LOG_ICMP]);
	FUNC1(f, "PACKET_LOG_IP", g->PacketLogConfig[PACKET_LOG_IP]);
	FUNC1(f, "PACKET_LOG_ARP", g->PacketLogConfig[PACKET_LOG_ARP]);
	FUNC1(f, "PACKET_LOG_ETHERNET", g->PacketLogConfig[PACKET_LOG_ETHERNET]);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  arp ;
struct TYPE_6__ {int /*<<< orphan*/  MacAddress; int /*<<< orphan*/  HostIP; } ;
typedef  TYPE_1__ VH ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_7__ {int HardwareSize; int ProtocolSize; int /*<<< orphan*/  TargetIP; int /*<<< orphan*/  TargetAddress; int /*<<< orphan*/  SrcIP; int /*<<< orphan*/  SrcAddress; void* Operation; void* ProtocolType; void* HardwareType; } ;
typedef  TYPE_2__ ARPV4_HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  ARP_HARDWARE_TYPE_ETHERNET ; 
 int /*<<< orphan*/  ARP_OPERATION_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAC_PROTO_ARPV4 ; 
 int /*<<< orphan*/  MAC_PROTO_IPV4 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  broadcast ; 

void FUNC4(VH *v, UINT dest_ip)
{
	ARPV4_HEADER arp;
	// Validate arguments
	if (v == NULL)
	{
		return;
	}

	// Build the ARP header
	arp.HardwareType = FUNC1(ARP_HARDWARE_TYPE_ETHERNET);
	arp.ProtocolType = FUNC1(MAC_PROTO_IPV4);
	arp.HardwareSize = 6;
	arp.ProtocolSize = 4;
	arp.Operation = FUNC1(ARP_OPERATION_REQUEST);
	FUNC0(arp.SrcAddress, v->MacAddress, 6);
	arp.SrcIP = v->HostIP;
	FUNC3(&arp.TargetAddress, 6);
	arp.TargetIP = dest_ip;

	// Transmission
	FUNC2(v, broadcast, v->MacAddress, MAC_PROTO_ARPV4, &arp, sizeof(arp));
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp1600 ;
typedef  int UINT ;
struct TYPE_14__ {void* Checksum; void* PacketLength; void* DstPort; void* SrcPort; } ;
typedef  TYPE_5__ UDP_HEADER ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_13__ {scalar_t__ ipv6_addr; } ;
struct TYPE_12__ {scalar_t__ ipv6_addr; } ;
struct TYPE_11__ {scalar_t__ ipv6_addr; } ;
struct TYPE_10__ {scalar_t__ ipv6_addr; } ;
struct TYPE_15__ {TYPE_4__ TunnelModeClientIP; TYPE_3__ TunnelModeServerIP; TYPE_2__ TransportModeClientIP; TYPE_1__ TransportModeServerIP; int /*<<< orphan*/  CurrentIpSecSaSend; int /*<<< orphan*/  ClientIP; } ;
typedef  int /*<<< orphan*/  IPV6_ADDR ;
typedef  int /*<<< orphan*/  IKE_SERVER ;
typedef  TYPE_6__ IKE_CLIENT ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IPSEC_PORT_L2TP ; 
 int /*<<< orphan*/  IP_PROTO_UDP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 

void FUNC9(IKE_SERVER *ike, IKE_CLIENT *c, UINT src_port, UINT dst_port, UCHAR *data, UINT data_size)
{
	UCHAR *udp;
	UINT udp_size;
	UDP_HEADER *u;
	UCHAR tmp1600[1600];
	bool no_free = false;
	// Validate arguments
	if (ike == NULL || c == NULL || data == NULL || data_size == 0)
	{
		return;
	}

	// Build an UDP packet
	udp_size = sizeof(UDP_HEADER) + data_size;

	if (udp_size > sizeof(tmp1600))
	{
		udp = FUNC8(udp_size);
	}
	else
	{
		udp = tmp1600;
		no_free = true;
	}

	// UDP header
	u = (UDP_HEADER *)udp;
	u->SrcPort = FUNC2(src_port);
	u->DstPort = FUNC2(dst_port);
	u->PacketLength = FUNC2(udp_size);
	u->Checksum = 0;

	//Debug("IPsec UDP Send: %u -> %u %u\n", src_port, dst_port, data_size);
#ifdef	RAW_DEBUG
	IPsecIkeSendUdpForDebug(IPSEC_PORT_L2TP, 1, data, data_size);
#endif	// RAW_DEBUG

	// Payload
	FUNC1(udp + sizeof(UDP_HEADER), data, data_size);

	if (FUNC6(&c->ClientIP))
	{
		if (FUNC7(c->CurrentIpSecSaSend) == false)
		{
			u->Checksum = FUNC0((IPV6_ADDR *)c->TransportModeServerIP.ipv6_addr,
				(IPV6_ADDR *)c->TransportModeClientIP.ipv6_addr,
				IP_PROTO_UDP,
				u,
				udp_size, 0);
		}
		else
		{
			u->Checksum = FUNC0((IPV6_ADDR *)c->TunnelModeServerIP.ipv6_addr,
				(IPV6_ADDR *)c->TunnelModeClientIP.ipv6_addr,
				IP_PROTO_UDP,
				u,
				udp_size, 0);
		}
	}

	FUNC5(ike, c, udp, udp_size, IP_PROTO_UDP);

	if (no_free == false)
	{
		FUNC3(udp);
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_18__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_23__ {int DstIP; scalar_t__ SrcIP; scalar_t__ Checksum; } ;
typedef  TYPE_4__ UCHAR ;
struct TYPE_26__ {int /*<<< orphan*/  MyPhysicalIP; int /*<<< orphan*/  YourIP; TYPE_5__* RawIcmp; TYPE_5__* RawUdp; TYPE_5__* RawTcp; int /*<<< orphan*/  RawIpMyMacAddr; int /*<<< orphan*/  RawIpYourMacAddr; scalar_t__ RawIp_HasError; } ;
struct TYPE_22__ {TYPE_4__* IPv4Header; } ;
struct TYPE_21__ {TYPE_18__* TCPHeader; TYPE_1__* UDPHeader; } ;
struct TYPE_25__ {int BroadcastPacket; scalar_t__ TypeL3; scalar_t__ TypeL4; int PacketSize; TYPE_4__* PacketData; TYPE_3__ L3; int /*<<< orphan*/  IPv4PayloadSize; TYPE_2__ L4; TYPE_4__* IPv4PayloadData; int /*<<< orphan*/  MacAddressDest; int /*<<< orphan*/  MacAddressSrc; } ;
struct TYPE_24__ {int RawIP_HeaderIncludeFlag; } ;
struct TYPE_20__ {scalar_t__ Checksum; } ;
struct TYPE_19__ {scalar_t__ Checksum; } ;
typedef  TYPE_5__ SOCK ;
typedef  TYPE_6__ PKT ;
typedef  TYPE_4__ IPV4_HEADER ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_8__ ETH ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int,int /*<<< orphan*/ ,TYPE_18__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_8__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  IP_PROTO_TCP ; 
 scalar_t__ FUNC8 (TYPE_4__*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ L3_ARPV4 ; 
 scalar_t__ L3_IPV4 ; 
 scalar_t__ L4_FRAGMENT ; 
 scalar_t__ L4_ICMPV4 ; 
 scalar_t__ L4_TCP ; 
 scalar_t__ L4_UDP ; 
 int MAX_PACKET_SIZE ; 
 TYPE_6__* FUNC12 (void*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 

void FUNC15(ETH *e, void *data, UINT size)
{
	PKT *p;
	SOCK *s = NULL;
	// Validate arguments
	if (e == NULL || data == NULL)
	{
		return;
	}
	if (size < 14 || size > MAX_PACKET_SIZE || e->RawIp_HasError)
	{
		FUNC4(data);
		return;
	}

	p = FUNC12(data, size);
	if (p == NULL)
	{
		FUNC4(data);
		return;
	}

	if (p->BroadcastPacket || FUNC1(p->MacAddressDest, e->RawIpMyMacAddr, 6) == 0)
	{
		if (FUNC9(p->MacAddressSrc))
		{
			FUNC2(e->RawIpYourMacAddr, p->MacAddressSrc, 6);
		}
	}

	if (FUNC10(e->RawIpYourMacAddr, 6) || FUNC9(p->MacAddressSrc) == false ||
		(p->BroadcastPacket == false && FUNC1(p->MacAddressDest, e->RawIpMyMacAddr, 6) != 0))
	{
		FUNC4(data);
		FUNC5(p);
		return;
	}


	if (p->TypeL3 == L3_IPV4)
	{
		if (p->TypeL4 == L4_TCP)
		{
			if (FUNC11(&e->MyPhysicalIP) == false)
			{
				s = e->RawTcp;
			}
		}
		else if (p->TypeL4 == L4_UDP)
		{
			if (FUNC3(e, p) == false)
			{
				s = e->RawUdp;
			}
		}
		else if (p->TypeL4 == L4_ICMPV4)
		{
			if (FUNC11(&e->MyPhysicalIP) == false)
			{
				s = e->RawIcmp;
			}
		}
		else if (p->TypeL4 == L4_FRAGMENT)
		{
			if (FUNC11(&e->MyPhysicalIP) == false)
			{
				s = e->RawIcmp;
			}
		}
	}
	else if (p->TypeL3 == L3_ARPV4)
	{
		FUNC3(e, p);
	}

	if (s != NULL && p->L3.IPv4Header->DstIP != 0xffffffff && p->BroadcastPacket == false &&
		p->L3.IPv4Header->SrcIP == FUNC6(&e->YourIP))
	{
		UCHAR *send_data = p->IPv4PayloadData;
		UCHAR *head = p->PacketData;
		UINT remove_header_size = (UINT)(send_data - head);

		if (p->PacketSize > remove_header_size)
		{
			IP dest;
			UINT send_data_size = p->PacketSize - remove_header_size;

			// checksum
			if (p->TypeL4 == L4_UDP)
			{
				p->L4.UDPHeader->Checksum = 0;
			}
			else if (p->TypeL4 == L4_TCP)
			{
				p->L4.TCPHeader->Checksum = 0;
				p->L4.TCPHeader->Checksum = FUNC0(FUNC6(&e->MyPhysicalIP),
					p->L3.IPv4Header->DstIP, IP_PROTO_TCP,
					p->L4.TCPHeader, p->IPv4PayloadSize, 0);
			}

			FUNC14(&dest, p->L3.IPv4Header->DstIP);

			if (s->RawIP_HeaderIncludeFlag == false)
			{
				FUNC13(s, &dest, 0, send_data, send_data_size);
			}
			else
			{
				IPV4_HEADER *ip = p->L3.IPv4Header;

				ip->SrcIP = FUNC6(&e->MyPhysicalIP);
				ip->Checksum = 0;
				ip->Checksum = FUNC8(ip, FUNC7(ip) * 4);

				FUNC13(s, &dest, 0, ip, ((UCHAR *)p->PacketData - (UCHAR *)ip) + p->PacketSize);
			}
		}
	}

	FUNC5(p);
	FUNC4(data);
}
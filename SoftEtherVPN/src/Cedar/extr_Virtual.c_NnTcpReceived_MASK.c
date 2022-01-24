#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_15__ {int /*<<< orphan*/  Now; } ;
struct TYPE_14__ {TYPE_5__* v; int /*<<< orphan*/  NatTableForRecv; } ;
struct TYPE_13__ {scalar_t__ Status; int /*<<< orphan*/  SrcIp; void* LastAck; void* LastSeq; int /*<<< orphan*/  SrcPort; int /*<<< orphan*/  TotalRecv; int /*<<< orphan*/  LastCommTime; } ;
struct TYPE_12__ {int Flag; scalar_t__ Checksum; int /*<<< orphan*/  SeqNumber; int /*<<< orphan*/  AckNumber; int /*<<< orphan*/  DstPort; int /*<<< orphan*/  SrcPort; } ;
typedef  TYPE_1__ TCP_HEADER ;
typedef  TYPE_2__ NATIVE_NAT_ENTRY ;
typedef  TYPE_3__ NATIVE_NAT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IP_PROTO_TCP ; 
 int /*<<< orphan*/  NAT_TCP ; 
 scalar_t__ NAT_TCP_ESTABLISHED ; 
 scalar_t__ NAT_TCP_WAIT_DISCONNECT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int TCP_ACK ; 
 int TCP_FIN ; 
 int FUNC6 (TYPE_1__*) ; 
 int TCP_RST ; 
 int TCP_SYN ; 

void FUNC7(NATIVE_NAT *t, UINT src_ip, UINT dest_ip, void *data, UINT size, UCHAR ttl, UINT max_l3_size)
{
	TCP_HEADER *tcp;
	UCHAR *payload;
	UINT payload_size;
	UINT tcp_header_size;
	// Validate arguments
	if (t == NULL || data == NULL)
	{
		return;
	}

	// TCP header
	if (size < sizeof(TCP_HEADER))
	{
		return;
	}

	tcp = (TCP_HEADER *)data;

	// Get the TCP header size
	tcp_header_size = FUNC6(tcp) * 4;
	if (size < tcp_header_size || tcp_header_size < sizeof(TCP_HEADER))
	{
		return;
	}

	// Payload
	payload = ((UCHAR *)data) + tcp_header_size;
	payload_size = size - tcp_header_size;

	// Search the port from the NAT table
	if (true)
	{
		NATIVE_NAT_ENTRY tt;
		NATIVE_NAT_ENTRY *e;

		FUNC3(&tt, NAT_TCP, 0, 0, src_ip, FUNC1(tcp->SrcPort), dest_ip, FUNC1(tcp->DstPort));

		e = FUNC4(t->NatTableForRecv, &tt);

		if (e != NULL)
		{
			// Last communication time
			e->LastCommTime = t->v->Now;
			e->TotalRecv += (UINT64)size;

			// Rewrite the TCP header
			tcp->Checksum = 0;
			tcp->DstPort = FUNC1(e->SrcPort);

			if (tcp->Flag & TCP_FIN || tcp->Flag & TCP_RST)
			{
				// Disconnect
				e->Status = NAT_TCP_WAIT_DISCONNECT;
			}

			if (tcp->Flag & TCP_SYN && tcp->Flag & TCP_ACK)
			{
				// Connection complete
				if (e->Status != NAT_TCP_WAIT_DISCONNECT)
				{
					e->Status = NAT_TCP_ESTABLISHED;
				}
			}

			e->LastSeq = FUNC2(tcp->AckNumber);
			e->LastAck = FUNC2(tcp->SeqNumber);

			// Checksum recalculation
			tcp->Checksum = FUNC0(src_ip, e->SrcIp, IP_PROTO_TCP, tcp, size, 0);

			// IP transmission
			FUNC5(t->v, e->SrcIp, src_ip, IP_PROTO_TCP, tcp, size);
		}
	}
}
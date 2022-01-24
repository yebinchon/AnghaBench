#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_40__   TYPE_9__ ;
typedef  struct TYPE_39__   TYPE_8__ ;
typedef  struct TYPE_38__   TYPE_7__ ;
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;
typedef  struct TYPE_31__   TYPE_14__ ;
typedef  struct TYPE_30__   TYPE_13__ ;
typedef  struct TYPE_29__   TYPE_12__ ;
typedef  struct TYPE_28__   TYPE_11__ ;
typedef  struct TYPE_27__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yahoo_ip ;
typedef  int USHORT ;
typedef  scalar_t__ UINT64 ;
typedef  int UINT ;
struct TYPE_36__ {TYPE_4__* TCPHeader; TYPE_1__* UDPHeader; } ;
struct TYPE_34__ {TYPE_2__* IPv4Header; } ;
struct TYPE_40__ {scalar_t__ TypeL3; scalar_t__ TypeL4; int PayloadSize; TYPE_5__ L4; TYPE_3__ L3; scalar_t__ Payload; } ;
struct TYPE_39__ {int Flag; int /*<<< orphan*/  SeqNumber; } ;
struct TYPE_38__ {int /*<<< orphan*/ * RecvTube; int /*<<< orphan*/ * SendTube; } ;
struct TYPE_37__ {int /*<<< orphan*/  MyPhysicalIPForce; } ;
struct TYPE_35__ {scalar_t__ SrcPort; scalar_t__ DstPort; } ;
struct TYPE_33__ {scalar_t__ SrcIP; scalar_t__ DstIP; } ;
struct TYPE_32__ {scalar_t__ SrcPort; scalar_t__ DstPort; } ;
struct TYPE_31__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_30__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_29__ {scalar_t__ TransactionId; } ;
struct TYPE_28__ {int /*<<< orphan*/  ClientIPAddress; TYPE_7__* Sock; } ;
struct TYPE_27__ {scalar_t__ IsIpRawMode; int /*<<< orphan*/  DnsServerIP; TYPE_11__* Ipc; int /*<<< orphan*/  DnsServerIP2; TYPE_6__* Eth; } ;
typedef  int /*<<< orphan*/  TUBE ;
typedef  TYPE_8__ TCP_HEADER ;
typedef  TYPE_9__ PKT ;
typedef  TYPE_10__ NATIVE_STACK ;
typedef  TYPE_11__ IPC ;
typedef  int /*<<< orphan*/  IP ;
typedef  int /*<<< orphan*/  INTERRUPT_MANAGER ;
typedef  TYPE_12__ DNSV4_HEADER ;
typedef  TYPE_13__ BUF ;
typedef  TYPE_14__ BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_11__*) ; 
 TYPE_14__* FUNC13 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IP_PROTO_TCP ; 
 int /*<<< orphan*/  IP_PROTO_UDP ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ L3_IPV4 ; 
 scalar_t__ L4_TCP ; 
 scalar_t__ L4_UDP ; 
 scalar_t__ NN_CHECK_CONNECTIVITY_INTERVAL ; 
 scalar_t__ NN_CHECK_CONNECTIVITY_TIMEOUT ; 
 int /*<<< orphan*/  NN_CHECK_HOSTNAME ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/ * FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 
 TYPE_13__* FUNC21 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,scalar_t__,int,scalar_t__,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,scalar_t__,int,scalar_t__,int) ; 
 int FUNC24 (scalar_t__) ; 
 scalar_t__ FUNC25 (scalar_t__,int,int /*<<< orphan*/ *) ; 
 int FUNC26 (TYPE_10__*) ; 
 TYPE_9__* FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC28 () ; 
 int FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 (int) ; 
 int TCP_ACK ; 
 int TCP_RST ; 
 int TCP_SYN ; 
 scalar_t__ FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  WHERE ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,int) ; 

bool FUNC35(NATIVE_STACK *a, TUBE *halt_tube)
{
	BUF *dns_query;
	BUF *dns_query2;
	bool ok = false;
	USHORT dns_tran_id = FUNC28();
	UINT64 next_send_tick = 0;
	UINT64 giveup_time;
	IPC *ipc;
	INTERRUPT_MANAGER *interrupt;
	TUBE *tubes[3];
	UINT num_tubes = 0;
	IP yahoo_ip;
	IP my_priv_ip;
	UINT num_send_dns = 0;
	IP using_dns;
	UINT src_port = 0;
	// Validate arguments
	if (a == NULL)
	{
		return false;
	}

	src_port = FUNC24(a->IsIpRawMode);

	FUNC1(&using_dns, &a->DnsServerIP, sizeof(IP));

	// Get my physical IP
	if (a->IsIpRawMode)
	{
		if (FUNC9(&my_priv_ip, false) == false)
		{
			FUNC2("NnTestConnectivity: GetMyPrivateIP failed.\n");
			return false;
		}
		else
		{
			FUNC2("NnTestConnectivity: GetMyPrivateIP ok: %r\n", &my_priv_ip);

			if (a->Eth != NULL)
			{
				FUNC1(&a->Eth->MyPhysicalIPForce, &my_priv_ip, sizeof(IP));
			}
		}
	}

	ipc = a->Ipc;
	interrupt = FUNC19();

	tubes[num_tubes++] = ipc->Sock->RecvTube;
	tubes[num_tubes++] = ipc->Sock->SendTube;

	if (halt_tube != NULL)
	{
		tubes[num_tubes++] = halt_tube;
	}

	FUNC34(&yahoo_ip, sizeof(yahoo_ip));

	// Try to get an IP address of www.yahoo.com
	dns_query = FUNC21(FUNC23(FUNC20(NN_CHECK_HOSTNAME, dns_tran_id),
		FUNC15(&ipc->ClientIPAddress), src_port, FUNC15(&a->DnsServerIP), 53),
		FUNC15(&ipc->ClientIPAddress), FUNC15(&a->DnsServerIP), IP_PROTO_UDP, 0);

	dns_query2 = FUNC21(FUNC23(FUNC20(NN_CHECK_HOSTNAME, dns_tran_id),
		FUNC15(&ipc->ClientIPAddress), src_port, FUNC15(&a->DnsServerIP), 53),
		FUNC15(&ipc->ClientIPAddress), FUNC15(&a->DnsServerIP2), IP_PROTO_UDP, 0);

	giveup_time = FUNC31() + NN_CHECK_CONNECTIVITY_TIMEOUT;
	FUNC0(interrupt, giveup_time);
	while (true)
	{
		UINT64 now = FUNC31();

		FUNC11(a->Ipc);

		if (now >= giveup_time)
		{
			break;
		}

		// Send a packet periodically
		if (next_send_tick == 0 || next_send_tick <= now)
		{
			next_send_tick = now + (UINT64)NN_CHECK_CONNECTIVITY_INTERVAL;

			FUNC0(interrupt, next_send_tick);

			if ((num_send_dns % 2) == 0)
			{
				FUNC14(ipc, dns_query->Buf, dns_query->Size);
			}
			else
			{
				FUNC14(ipc, dns_query2->Buf, dns_query2->Size);
			}

			num_send_dns++;
		}

		// Happy processing
		FUNC12(ipc);

		while (true)
		{
			// Receive a packet
			BLOCK *b = FUNC13(ipc);
			PKT *pkt;

			if (b == NULL)
			{
				break;
			}

			// Parse the packet
			pkt = FUNC27(b->Buf, b->Size);

			if (pkt != NULL)
			{
				if (pkt->TypeL3 == L3_IPV4 && pkt->TypeL4 == L4_UDP &&
					(pkt->L3.IPv4Header->SrcIP == FUNC15(&a->DnsServerIP) ||
					 pkt->L3.IPv4Header->SrcIP == FUNC15(&a->DnsServerIP2)) &&
					pkt->L3.IPv4Header->DstIP == FUNC15(&ipc->ClientIPAddress) &&
					pkt->L4.UDPHeader->SrcPort == FUNC3(53) && pkt->L4.UDPHeader->DstPort == FUNC3(src_port))
				{
					DNSV4_HEADER *dns_header = (DNSV4_HEADER *)pkt->Payload;
					if (pkt->PayloadSize >= sizeof(DNSV4_HEADER))
					{
						if (dns_header->TransactionId == FUNC3(dns_tran_id))
						{
							IP ret_ip;

							if (FUNC25(pkt->Payload, pkt->PayloadSize, &ret_ip))
							{
								FUNC32(&using_dns, pkt->L3.IPv4Header->SrcIP);
								FUNC2("NativeStack: Using DNS: %r\n", &using_dns);

								FUNC1(&yahoo_ip, &ret_ip, sizeof(IP));
							}
						}
					}
				}
			}

			FUNC8(pkt);
			FUNC5(b);
		}

		if ((halt_tube != NULL && FUNC16(halt_tube) == false) ||
			FUNC16(ipc->Sock->SendTube) == false || FUNC16(ipc->Sock->RecvTube) == false)
		{
			// Disconnected
			break;
		}

		if (FUNC17(&yahoo_ip) == false)
		{
			// There is a response
			break;
		}

		// Keep the CPU waiting
		FUNC33(tubes, num_tubes, FUNC10(interrupt));
	}

	FUNC6(dns_query);
	FUNC6(dns_query2);

	if (FUNC17(&yahoo_ip) == false)
	{
		BUF *tcp_query;
		UINT seq = FUNC29();
		bool tcp_get_response = false;
		UINT recv_seq = 0;

		// Since the IP address of www.yahoo.com has gotten, try to connect by TCP
		giveup_time = FUNC31() + NN_CHECK_CONNECTIVITY_TIMEOUT;
		FUNC0(interrupt, giveup_time);

		// Generate a TCP packet
		tcp_query = FUNC21(FUNC22(FUNC18(), FUNC15(&ipc->ClientIPAddress), src_port,
			FUNC15(&yahoo_ip), 80, seq, 0, TCP_SYN, 8192, 1414),
			FUNC15(&ipc->ClientIPAddress), FUNC15(&yahoo_ip), IP_PROTO_TCP, 0);

		FUNC2("Test TCP to %r\n", &yahoo_ip);

		next_send_tick = 0;

		while (true)
		{
			UINT64 now = FUNC31();

			FUNC11(a->Ipc);

			if (now >= giveup_time)
			{
				break;
			}

			// Send the packet periodically
			if (next_send_tick == 0 || next_send_tick <= now)
			{
				next_send_tick = now + (UINT64)NN_CHECK_CONNECTIVITY_INTERVAL;

				FUNC0(interrupt, next_send_tick);

				FUNC14(ipc, tcp_query->Buf, tcp_query->Size);
			}

			// Happy procedure
			FUNC12(ipc);

			while (true)
			{
				// Receive a packet
				BLOCK *b = FUNC13(ipc);
				PKT *pkt;

				if (b == NULL)
				{
					break;
				}

				// Parse the packet
				pkt = FUNC27(b->Buf, b->Size);

				if (pkt != NULL)
				{
					if (pkt->TypeL3 == L3_IPV4 && pkt->TypeL4 == L4_TCP &&
						pkt->L3.IPv4Header->SrcIP == FUNC15(&yahoo_ip) &&
						pkt->L3.IPv4Header->DstIP == FUNC15(&ipc->ClientIPAddress) &&
						pkt->L4.TCPHeader->SrcPort == FUNC3(80) && pkt->L4.TCPHeader->DstPort == FUNC3(src_port))
					{
						TCP_HEADER *tcp_header = (TCP_HEADER *)pkt->L4.TCPHeader;
						if ((tcp_header->Flag & TCP_SYN) && (tcp_header->Flag & TCP_ACK))
						{
							// There was a TCP response
							tcp_get_response = true;
							recv_seq = FUNC4(tcp_header->SeqNumber);
						}
					}
				}

				FUNC8(pkt);
				FUNC5(b);
			}

			if ((halt_tube != NULL && FUNC16(halt_tube) == false) ||
				FUNC16(ipc->Sock->SendTube) == false || FUNC16(ipc->Sock->RecvTube) == false)
			{
				// Disconnected
				break;
			}

			if (tcp_get_response)
			{
				WHERE;
				break;
			}

			// Keep the CPU waiting
			FUNC33(tubes, num_tubes, FUNC10(interrupt));
		}

		FUNC6(tcp_query);

		// Send a RST
		if (recv_seq != 0)
		{
			recv_seq++;
		}

		tcp_query = FUNC21(FUNC22(FUNC18(), FUNC15(&ipc->ClientIPAddress), src_port,
			FUNC15(&yahoo_ip), 80, seq + 1, recv_seq, TCP_RST | TCP_ACK, 8192, 0),
			FUNC15(&ipc->ClientIPAddress), FUNC15(&yahoo_ip), IP_PROTO_TCP, 0);

		FUNC14(ipc, tcp_query->Buf, tcp_query->Size);

		FUNC6(tcp_query);

		FUNC30(100);

		if (tcp_get_response)
		{
			ok = true;
		}
	}

	FUNC7(interrupt);

	if (ok)
	{
		if (FUNC17(&using_dns) == false)
		{
			FUNC1(&a->DnsServerIP, &using_dns, sizeof(IP));
		}

		if (a->IsIpRawMode)
		{
			if (FUNC26(a) == false)
			{
				FUNC2("NsStartIpTablesTracking failed.\n");
				ok = false;
			}
		}
	}

	return ok;
}
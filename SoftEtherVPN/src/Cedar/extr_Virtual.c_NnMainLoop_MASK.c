#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_58__   TYPE_9__ ;
typedef  struct TYPE_57__   TYPE_8__ ;
typedef  struct TYPE_56__   TYPE_7__ ;
typedef  struct TYPE_55__   TYPE_6__ ;
typedef  struct TYPE_54__   TYPE_5__ ;
typedef  struct TYPE_53__   TYPE_4__ ;
typedef  struct TYPE_52__   TYPE_3__ ;
typedef  struct TYPE_51__   TYPE_2__ ;
typedef  struct TYPE_50__   TYPE_1__ ;
typedef  struct TYPE_49__   TYPE_19__ ;
typedef  struct TYPE_48__   TYPE_18__ ;
typedef  struct TYPE_47__   TYPE_17__ ;
typedef  struct TYPE_46__   TYPE_16__ ;
typedef  struct TYPE_45__   TYPE_15__ ;
typedef  struct TYPE_44__   TYPE_14__ ;
typedef  struct TYPE_43__   TYPE_13__ ;
typedef  struct TYPE_42__   TYPE_12__ ;
typedef  struct TYPE_41__   TYPE_11__ ;
typedef  struct TYPE_40__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yahoo_ip ;
typedef  int USHORT ;
typedef  int UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_58__ {TYPE_1__* HubOption; scalar_t__ UseNat; } ;
struct TYPE_57__ {int /*<<< orphan*/ * SendTube; int /*<<< orphan*/ * RecvTube; } ;
struct TYPE_56__ {scalar_t__ LeaseTime; int /*<<< orphan*/  ServerAddress; } ;
struct TYPE_55__ {TYPE_5__* TCPHeader; TYPE_2__* UDPHeader; } ;
struct TYPE_54__ {scalar_t__ SrcPort; scalar_t__ DstPort; } ;
struct TYPE_53__ {TYPE_3__* IPv4Header; } ;
struct TYPE_52__ {scalar_t__ SrcIP; scalar_t__ DstIP; } ;
struct TYPE_51__ {scalar_t__ SrcPort; scalar_t__ DstPort; } ;
struct TYPE_50__ {scalar_t__ DisableIpRawModeSecureNAT; scalar_t__ DisableKernelModeSecureNAT; } ;
struct TYPE_49__ {scalar_t__ num_item; } ;
struct TYPE_48__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_47__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_46__ {int /*<<< orphan*/  ref; } ;
struct TYPE_45__ {scalar_t__ TransactionId; } ;
struct TYPE_44__ {TYPE_8__* Sock; int /*<<< orphan*/  ClientIPAddress; } ;
struct TYPE_43__ {int Halt; int IsRawIpMode; int /*<<< orphan*/  CancelLock; TYPE_16__* Cancel; TYPE_19__* RecvQueue; TYPE_19__* SendQueue; TYPE_9__* v; int /*<<< orphan*/ * HaltTube; } ;
struct TYPE_42__ {int /*<<< orphan*/  IsIpRawMode; int /*<<< orphan*/  DnsServerIP; TYPE_7__ CurrentDhcpOptionList; TYPE_14__* Ipc; } ;
struct TYPE_41__ {scalar_t__ TypeL3; scalar_t__ TypeL4; int PayloadSize; TYPE_6__ L4; TYPE_4__ L3; scalar_t__ Payload; } ;
struct TYPE_40__ {int Flag; int /*<<< orphan*/  SeqNumber; } ;
typedef  int /*<<< orphan*/  TUBE ;
typedef  TYPE_10__ TCP_HEADER ;
typedef  TYPE_11__ PKT ;
typedef  TYPE_12__ NATIVE_STACK ;
typedef  TYPE_13__ NATIVE_NAT ;
typedef  TYPE_14__ IPC ;
typedef  int /*<<< orphan*/  IP ;
typedef  int /*<<< orphan*/  INTERRUPT_MANAGER ;
typedef  TYPE_15__ DNSV4_HEADER ;
typedef  TYPE_16__ CANCEL ;
typedef  TYPE_17__ BUF ;
typedef  TYPE_18__ BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_18__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_17__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_11__*) ; 
 TYPE_18__* FUNC11 (TYPE_19__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_14__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_14__*) ; 
 TYPE_18__* FUNC16 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_14__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ IPC_DHCP_DEFAULT_LEASE ; 
 int /*<<< orphan*/  IPC_DHCP_MIN_LEASE ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IP_PROTO_TCP ; 
 int /*<<< orphan*/  IP_PROTO_UDP ; 
 int /*<<< orphan*/  FUNC19 (TYPE_19__*,TYPE_11__*) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ L3_IPV4 ; 
 scalar_t__ L4_TCP ; 
 scalar_t__ L4_UDP ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_19__*) ; 
 int FUNC23 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (scalar_t__,int) ; 
 int /*<<< orphan*/  NN_CHECK_HOSTNAME ; 
 scalar_t__ NN_MAX_QUEUE_LENGTH ; 
 scalar_t__ NN_POLL_CONNECTIVITY_INTERVAL ; 
 scalar_t__ NN_POLL_CONNECTIVITY_TIMEOUT ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/ * FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int) ; 
 TYPE_17__* FUNC28 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,scalar_t__,int,scalar_t__,int,scalar_t__,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,scalar_t__,int,scalar_t__,int) ; 
 int FUNC31 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC32 (scalar_t__,int,int /*<<< orphan*/ *) ; 
 TYPE_11__* FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC34 () ; 
 scalar_t__ FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 (TYPE_16__*) ; 
 int TCP_ACK ; 
 int TCP_RST ; 
 int TCP_SYN ; 
 int FUNC37 () ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (TYPE_19__*) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ **,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *,int) ; 

void FUNC43(NATIVE_NAT *t, NATIVE_STACK *a)
{
	IPC *ipc;
	TUBE *tubes[3];
	UINT num_tubes = 0;
	UINT64 next_poll_tick = 0;
	INTERRUPT_MANAGER *interrupt;
	USHORT dns_src_port = 0;
	USHORT dns_tran_id = 0;
	USHORT tcp_src_port = 0;
	UINT tcp_seq = 0;
	IP yahoo_ip;
	bool wait_for_dns = false;
	UINT64 tcp_last_recv_tick = 0;
	UINT dhcp_renew_interval;
	UINT64 next_dhcp_renew_tick = 0;
	// Validate arguments
	if (t == NULL || a == NULL)
	{
		return;
	}

	dhcp_renew_interval = a->CurrentDhcpOptionList.LeaseTime;

	if (dhcp_renew_interval == 0)
	{
		dhcp_renew_interval = IPC_DHCP_DEFAULT_LEASE;
	}

	dhcp_renew_interval = FUNC23(dhcp_renew_interval, IPC_DHCP_MIN_LEASE) / 2;

	interrupt = FUNC26();

	ipc = a->Ipc;

	tubes[num_tubes++] = ipc->Sock->RecvTube;
	//tubes[num_tubes++] = ipc->Sock->SendTube;	// bug 2015.10.01 remove
	tubes[num_tubes++] = t->HaltTube;

	FUNC42(&yahoo_ip, sizeof(yahoo_ip));

	next_poll_tick = FUNC37() + (UINT64)NN_POLL_CONNECTIVITY_INTERVAL;
	FUNC0(interrupt, next_poll_tick);

	tcp_last_recv_tick = FUNC37();
	next_dhcp_renew_tick = FUNC37() + (UINT64)dhcp_renew_interval * 1000;
	FUNC0(interrupt, next_dhcp_renew_tick);

	while (t->Halt == false && t->v->UseNat)
	{
		UINT64 now = FUNC37();
		bool call_cancel = false;
		bool state_changed = false;
		UINT wait_interval;

		if (t->v->HubOption != NULL)
		{
			if (t->IsRawIpMode == false && t->v->HubOption->DisableKernelModeSecureNAT)
			{
				break;
			}
			if (t->IsRawIpMode && t->v->HubOption->DisableIpRawModeSecureNAT)
			{
				break;
			}
		}

		FUNC14(ipc);
		call_cancel = false;

LABEL_RESTART:
		state_changed = false;

		if (next_poll_tick == 0 || next_poll_tick <= now)
		{
			BUF *dns_query;

			dns_src_port = FUNC31(a->IsIpRawMode);
			dns_tran_id = FUNC34();

			// Start a connectivity check periodically
			dns_query = FUNC28(FUNC30(FUNC27(NN_CHECK_HOSTNAME, dns_tran_id),
				FUNC18(&ipc->ClientIPAddress), dns_src_port, FUNC18(&a->DnsServerIP), 53),
				FUNC18(&ipc->ClientIPAddress), FUNC18(&a->DnsServerIP), IP_PROTO_UDP, 0);

			FUNC17(ipc, dns_query->Buf, dns_query->Size);

			wait_for_dns = true;

			FUNC8(dns_query);

			next_poll_tick = now + (UINT64)NN_POLL_CONNECTIVITY_INTERVAL;
			FUNC0(interrupt, next_poll_tick);
		}

		if (next_dhcp_renew_tick == 0 || next_dhcp_renew_tick <= now)
		{
			IP ip;

			FUNC38(&ip, a->CurrentDhcpOptionList.ServerAddress);

			FUNC13(ipc, &ip);

			next_dhcp_renew_tick = now + (UINT64)dhcp_renew_interval * 1000;
			FUNC0(interrupt, next_dhcp_renew_tick);
		}

		// Send an IP packet to IPC
		FUNC22(t->SendQueue);
		{
			while (true)
			{
				BLOCK *b = FUNC11(t->SendQueue);

				if (b == NULL)
				{
					break;
				}

				FUNC17(ipc, b->Buf, b->Size);

				state_changed = true;

				FUNC7(b);
			}
		}
		FUNC40(t->SendQueue);

		// Happy processing
		FUNC15(ipc);

		FUNC22(t->RecvQueue);
		{
			while (true)
			{
				// Receive an IP packet from IPC
				BLOCK *b = FUNC16(ipc);
				PKT *pkt;

				if (b == NULL)
				{
					// Can not receive any more
					break;
				}

				// Parse the packet
				pkt = FUNC33(b->Buf, b->Size);

				FUNC7(b);

				if (pkt != NULL)
				{
					bool no_store = false;

					// Read the contents of the packet first, to determine whether it is a response for the connectivity test packet
					if (wait_for_dns)
					{
						if (pkt->TypeL3 == L3_IPV4 && pkt->TypeL4 == L4_UDP &&
							pkt->L3.IPv4Header->SrcIP == FUNC18(&a->DnsServerIP) &&
							pkt->L3.IPv4Header->DstIP == FUNC18(&ipc->ClientIPAddress) &&
							pkt->L4.UDPHeader->SrcPort == FUNC5(53) && pkt->L4.UDPHeader->DstPort == FUNC5(dns_src_port))
						{
							DNSV4_HEADER *dns_header = (DNSV4_HEADER *)pkt->Payload;
							if (pkt->PayloadSize >= sizeof(DNSV4_HEADER))
							{
								if (dns_header->TransactionId == FUNC5(dns_tran_id))
								{
									IP ret_ip;

									if (FUNC32(pkt->Payload, pkt->PayloadSize, &ret_ip))
									{
										BUF *tcp_query;

										FUNC3(&yahoo_ip, &ret_ip, sizeof(IP));

										//SetIP(&yahoo_ip, 192, 168, 2, 32);

										// DNS response has been received
										no_store = true;

										tcp_src_port = FUNC31(a->IsIpRawMode);

										// Generate a TCP connection attempt packet
										tcp_seq = FUNC35();
										tcp_query = FUNC28(FUNC29(FUNC25(), FUNC18(&ipc->ClientIPAddress), tcp_src_port,
											FUNC18(&yahoo_ip), 80, tcp_seq, 0, TCP_SYN, 8192, 1414),
											FUNC18(&ipc->ClientIPAddress), FUNC18(&yahoo_ip), IP_PROTO_TCP, 0);

										FUNC17(ipc, tcp_query->Buf, tcp_query->Size);

										FUNC8(tcp_query);

										wait_for_dns = false;
									}
								}
							}
						}
					}

					if (pkt->TypeL3 == L3_IPV4 && pkt->TypeL4 == L4_TCP &&
						pkt->L3.IPv4Header->SrcIP == FUNC18(&yahoo_ip) &&
						pkt->L3.IPv4Header->DstIP == FUNC18(&ipc->ClientIPAddress) &&
						pkt->L4.TCPHeader->SrcPort == FUNC5(80) && pkt->L4.TCPHeader->DstPort == FUNC5(tcp_src_port))
					{
						TCP_HEADER *tcp_header = (TCP_HEADER *)pkt->L4.TCPHeader;
						if ((tcp_header->Flag & TCP_SYN) && (tcp_header->Flag & TCP_ACK))
						{
							// There was a TCP response
							BUF *tcp_query;
							UINT recv_seq = FUNC6(tcp_header->SeqNumber) + 1;

							no_store = true;

							// Send a RST
							tcp_query = FUNC28(FUNC29(FUNC25(), FUNC18(&ipc->ClientIPAddress), tcp_src_port,
								FUNC18(&yahoo_ip), 80, tcp_seq + 1, recv_seq, TCP_RST | TCP_ACK, 8192, 0),
								FUNC18(&ipc->ClientIPAddress), FUNC18(&yahoo_ip), IP_PROTO_TCP, 0);

							FUNC17(ipc, tcp_query->Buf, tcp_query->Size);

							FUNC8(tcp_query);

							tcp_last_recv_tick = now;
						}
					}

					if (t->RecvQueue->num_item > NN_MAX_QUEUE_LENGTH)
					{
						no_store = true;
					}

					if (no_store == false)
					{
						// Put in the queue
						FUNC19(t->RecvQueue, pkt);
						call_cancel = true;
						state_changed = true;
					}
					else
					{
						// Release the packet
						FUNC10(pkt);
					}
				}
			}
		}
		FUNC40(t->RecvQueue);

		if (state_changed)
		{
			goto LABEL_RESTART;
		}

		if (call_cancel)
		{
			CANCEL *c = NULL;

			FUNC21(t->CancelLock);
			{
				c = t->Cancel;

				FUNC1(c->ref);
			}
			FUNC39(t->CancelLock);

			FUNC2(c);

			FUNC36(c);
		}

		if (FUNC20(ipc->Sock->RecvTube) == false || FUNC20(ipc->Sock->SendTube) == false)
		{
			// Disconnected
			break;
		}

		if ((tcp_last_recv_tick + (UINT64)NN_POLL_CONNECTIVITY_TIMEOUT) < now)
		{
			// Connectivity test has timed out because a certain period of time has elapsed
			FUNC4("NN_POLL_CONNECTIVITY_TIMEOUT\n");
			break;
		}

		wait_interval = FUNC12(interrupt);
		wait_interval = FUNC24(wait_interval, 1234);

		if (wait_interval != 0)
		{
			FUNC41(tubes, num_tubes, wait_interval);
		}
	}

	FUNC9(interrupt);
}
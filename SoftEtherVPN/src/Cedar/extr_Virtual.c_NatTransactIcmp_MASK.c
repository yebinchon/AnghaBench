#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_20__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int NatDoCancelFlag; scalar_t__ Now; void* TmpBuf; int /*<<< orphan*/  SockEvent; scalar_t__ IcmpRawSocketOk; } ;
typedef  TYPE_1__ VH ;
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
struct TYPE_31__ {int IgnoreRecvErr; int IgnoreSendErr; int /*<<< orphan*/  LocalPort; int /*<<< orphan*/  LocalIP; } ;
struct TYPE_30__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; int /*<<< orphan*/  Ttl; } ;
struct TYPE_29__ {int DataSize; scalar_t__ Data; int /*<<< orphan*/  IpAddress; scalar_t__ Ok; } ;
struct TYPE_28__ {scalar_t__ DstIP; } ;
struct TYPE_27__ {scalar_t__ DestPort; int UdpSocketCreated; scalar_t__ LastCommTime; scalar_t__ DestIp; int /*<<< orphan*/ * IcmpThread; TYPE_6__* Sock; TYPE_20__* UdpSendQueue; int /*<<< orphan*/  UdpRecvQueue; int /*<<< orphan*/  SrcPort; TYPE_5__* IcmpResponseBlock; scalar_t__ IcmpTaskFinished; TYPE_5__* IcmpQueryBlock; int /*<<< orphan*/  PublicPort; int /*<<< orphan*/  PublicIp; scalar_t__ DisconnectNow; } ;
struct TYPE_26__ {int num_item; } ;
typedef  TYPE_2__ NAT_ENTRY ;
typedef  TYPE_3__ IPV4_HEADER ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_4__ ICMP_RESULT ;
typedef  TYPE_5__ BLOCK ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 TYPE_5__* FUNC6 (TYPE_20__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IP_PROTO_ICMPV4 ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_NUM_IGNORE_ERRORS ; 
 void* FUNC13 (scalar_t__) ; 
 scalar_t__ NAT_ICMP_TIMEOUT ; 
 scalar_t__ NAT_ICMP_TIMEOUT_WITH_API ; 
 int /*<<< orphan*/  NatIcmpThreadProc ; 
 TYPE_5__* FUNC14 (void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_6__* FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (TYPE_6__*,int /*<<< orphan*/ *,scalar_t__*,void*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ SOCK_LATER ; 
 scalar_t__ FUNC20 (TYPE_6__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool FUNC24(VH *v, NAT_ENTRY *n)
{
	void *buf;
	UINT recv_size;
	BLOCK *block;
	IP dest_ip;
	UINT num_ignore_errors = 0;
	UINT dest_port = 0;
	// Validate arguments
	if (v == NULL || n == NULL)
	{
		return true;
	}

	dest_port = n->DestPort;

	if (n->DisconnectNow)
	{
		goto DISCONNECT;
	}

	if (v->IcmpRawSocketOk)
	{
		// Environment that the Raw sockets are available
		if (n->UdpSocketCreated == false)
		{
			// Create a UDP socket
			n->Sock = FUNC16(FUNC12(IP_PROTO_ICMPV4));
			if (n->Sock == NULL)
			{
				// Socket creation failure
				goto DISCONNECT;
			}
			else
			{
				n->PublicIp = FUNC7(&n->Sock->LocalIP);
				n->PublicPort = n->Sock->LocalPort;

				FUNC11(n->Sock, v->SockEvent);
				n->UdpSocketCreated = true;
			}
		}
	}
	else
	{
		// Create a thread for using ICMP API if Raw sockets are not available
		if (n->IcmpThread == NULL)
		{
			if (n->UdpSendQueue->num_item >= 1)
			{
				// Since UdpSendQueue contains only 1 query, get a first query
				// and create a thread and pass the query to the thread
				BLOCK *block = FUNC6(n->UdpSendQueue);

				n->IcmpQueryBlock = block;

				n->IcmpThread = FUNC15(NatIcmpThreadProc, n);
			}
		}

		if (n->IcmpTaskFinished)
		{
			if (n->IcmpResponseBlock != NULL)
			{
				// Because there was a response from the thread that calls ICMP API, pass this result to the stack
				block = n->IcmpResponseBlock;
				n->IcmpResponseBlock = NULL;
				FUNC10(n->UdpRecvQueue, block);
				v->NatDoCancelFlag = true;
				n->LastCommTime = v->Now;
			}
			else
			{
				// Disconnect immediately when it fails
				goto DISCONNECT;
			}
		}

		// Examine whether this session timed-out
		if ((n->LastCommTime + (UINT64)NAT_ICMP_TIMEOUT_WITH_API) < v->Now || n->LastCommTime > v->Now)
		{
			// Time-out
			goto DISCONNECT;
		}

		return true;
	}

	// Following are processed only for if the raw sockets are available
	buf = v->TmpBuf;
	FUNC22(&dest_ip, n->DestIp);

	// Try to receive data from the UDP socket
	while (true)
	{
		IP src_ip;
		UINT src_port;
		recv_size = FUNC17(n->Sock, &src_ip, &src_port, buf, 65536);

		if (recv_size == SOCK_LATER)
		{
			// Packet has not arrived
			break;
		}
		else if (recv_size == 0)
		{
			FUNC2("ICMP ERROR\n");
			// Error?
			if (n->Sock->IgnoreRecvErr == false)
			{
				// A fatal error occurred
				goto DISCONNECT;
			}
			else
			{
				if ((num_ignore_errors++) >= MAX_NUM_IGNORE_ERRORS)
				{
					goto DISCONNECT;
				}
			}
		}
		else
		{
			// Analyze the arriving packet
			ICMP_RESULT *ret = FUNC9(&dest_ip, n->SrcPort, 0, buf, recv_size);

			if (ret != NULL)
			{
				if ((ret->Ok && FUNC0(&ret->IpAddress, &dest_ip) == 0) ||
					(ret->DataSize >= sizeof(IPV4_HEADER) && ((IPV4_HEADER *)ret->Data)->DstIP == n->DestIp))
				{
					// Insert to the queue
					void *data = FUNC13(recv_size);
					FUNC1(data, buf, recv_size);
					block = FUNC14(data, recv_size, 0);
					FUNC10(n->UdpRecvQueue, block);
					v->NatDoCancelFlag = true;
					n->LastCommTime = v->Now;
				}

				FUNC8(ret);
			}
		}
	}

	// Try to send data to the UDP socket
	while ((block = FUNC6(n->UdpSendQueue)))
	{
		// Assemble the Echo header and ICMP header
		UINT send_size;

		FUNC21(n->Sock, block->Ttl);
		send_size = FUNC20(n->Sock, &dest_ip, dest_port, block->Buf, block->Size);

		FUNC5(block);
		if (send_size == 0)
		{
			FUNC2("ICMP ERROR\n");
			// Determine whether a fatal error
			if (n->Sock->IgnoreSendErr == false)
			{
				// A fatal error occurred
				goto DISCONNECT;
			}
		}
		else
		{
			n->LastCommTime = v->Now;
		}
	}

	// Examine whether this session timed-out
	if ((n->LastCommTime + (UINT64)NAT_ICMP_TIMEOUT) < v->Now || n->LastCommTime > v->Now)
	{
		// Time-out
		goto DISCONNECT;
	}

	return true;

DISCONNECT:
	// Disconnect this session
	if (n->UdpSocketCreated)
	{
		// Close the socket
		FUNC4(n->Sock);
		FUNC18(n->Sock);
		n->Sock = NULL;
	}

	// Terminate if the thread has been created
	if (n->IcmpThread != NULL)
	{
		FUNC23(n->IcmpThread, INFINITE);
		FUNC19(n->IcmpThread);
		n->IcmpThread = NULL;
	}

	// Delete the entry
	FUNC3(v, n);

	return false;
}
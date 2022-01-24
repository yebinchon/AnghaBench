#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int USHORT ;
typedef  scalar_t__ UINT ;
typedef  size_t UCHAR ;
struct TYPE_17__ {char* SvcName; size_t RandPortId; scalar_t__ volatile* NatTGlobalUdpPort; int ServerMode; scalar_t__ Port; size_t* SvcNameHash; int Client_IcmpId; int Client_IcmpSeqNo; scalar_t__ Protocol; int NoNatTRegister; void* Thread; TYPE_1__* SockEvent; TYPE_2__* UdpSock; void* IpQueryThread; int /*<<< orphan*/ * ProcRpcRecv; int /*<<< orphan*/ * ProcInterrupts; int /*<<< orphan*/  CurrentRegisterHostname; int /*<<< orphan*/  NatT_SourceIpList; void* NatT_TranId; int /*<<< orphan*/  NewSockQueue; void* NewSockConnectEvent; void* SendPacketList; void* TargetConnectedEvent; void* Param; int /*<<< orphan*/  Lock; int /*<<< orphan*/  Now; void* HaltEvent; void* SessionList; int /*<<< orphan*/  Interrupt; void* NatT_SessionKey; } ;
struct TYPE_16__ {scalar_t__ LocalPort; int /*<<< orphan*/  ref; } ;
struct TYPE_15__ {int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ SOCK_EVENT ;
typedef  TYPE_2__ SOCK ;
typedef  int /*<<< orphan*/  RUDP_STACK_RPC_RECV_PROC ;
typedef  int /*<<< orphan*/  RUDP_STACK_INTERRUPTS_PROC ;
typedef  TYPE_3__ RUDP_STACK ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  IP_PROTO_ICMPV4 ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC6 () ; 
 void* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 void* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 TYPE_1__* FUNC13 () ; 
 void* FUNC14 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_2__* FUNC15 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_2__* FUNC16 (scalar_t__,int,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC17 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int FUNC18 (size_t*) ; 
 int /*<<< orphan*/ * RUDPCompareSessionList ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RUDPIpQueryThread ; 
 int /*<<< orphan*/  RUDPMainThread ; 
 scalar_t__ RUDP_PROTOCOL_DNS ; 
 scalar_t__ RUDP_PROTOCOL_ICMP ; 
 scalar_t__ RUDP_PROTOCOL_UDP ; 
 int FUNC20 () ; 
 void* FUNC21 () ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC22 (size_t*,...) ; 
 int /*<<< orphan*/  FUNC23 (char*,int,char*) ; 
 int FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 int /*<<< orphan*/  FUNC28 (void*) ; 
 TYPE_3__* FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 () ; 
 scalar_t__* rand_port_numbers ; 

RUDP_STACK *FUNC31(bool server_mode, char *svc_name, RUDP_STACK_INTERRUPTS_PROC *proc_interrupts, RUDP_STACK_RPC_RECV_PROC *proc_rpc_recv, void *param, UINT port, SOCK *sock, SOCK_EVENT *sock_event, bool server_no_natt_register, bool over_dns_mode, IP *client_target_ip, volatile UINT *natt_global_udp_port, UCHAR rand_port_id, IP *listen_ip)
{
	RUDP_STACK *r;
	char tmp[MAX_SIZE];
	UCHAR pid_hash[SHA1_SIZE];
	UINT pid;
	USHORT pid_us;

	// Validate arguments
	if (FUNC2(svc_name))
	{
		return NULL;
	}

	FUNC4();

	if (sock == NULL)
	{
		if (server_mode == false && client_target_ip != NULL)
		{
			sock = FUNC15(client_target_ip, port);
		}
		else
		{
			if (rand_port_id == 0)
			{
				sock = FUNC16(port, false, listen_ip);
			}
			else
			{
				sock = FUNC17(false, listen_ip, 0, rand_port_id);
			}
		}

		if (sock == NULL)
		{
			return NULL;
		}
	}
	else
	{
		FUNC0(sock->ref);
	}

	if (port == 0)
	{
		port = sock->LocalPort;
	}

	if (rand_port_id != 0)
	{
		rand_port_numbers[rand_port_id] = port;
	}

	if (sock_event == NULL)
	{
		sock_event = FUNC13();
	}
	else
	{
		FUNC0(sock_event->ref);
	}

	r = FUNC29(sizeof(RUDP_STACK));

	r->NatT_SessionKey = FUNC21();

	FUNC23(r->SvcName, sizeof(r->SvcName), svc_name);
	r->RandPortId = rand_port_id;
	r->NatTGlobalUdpPort = natt_global_udp_port;
	r->ServerMode = server_mode;
	r->Interrupt = FUNC8();
	r->SessionList = FUNC9(RUDPCompareSessionList);
	r->UdpSock = sock;
	r->Port = port;
	r->SockEvent = sock_event;
	r->HaltEvent = FUNC7();
	r->Now = FUNC26();
	r->Lock = FUNC11();
	r->Param = param;
	r->TargetConnectedEvent = FUNC7();
	r->SendPacketList = FUNC9(NULL);
	r->NewSockConnectEvent = FUNC7();
	r->NewSockQueue = FUNC12();
	r->NatT_TranId = FUNC21();

	r->NatT_SourceIpList = FUNC10(NULL);

	FUNC23(tmp, sizeof(tmp), r->SvcName);
	FUNC27(tmp);
	FUNC25(tmp);

	FUNC22(r->SvcNameHash, tmp, FUNC24(tmp));

	r->Client_IcmpId = (USHORT)(FUNC20() % 65534 + 1);
	r->Client_IcmpSeqNo = (USHORT)(FUNC20() % 65534 + 1);

	// Determination of the type of the protocol
	r->Protocol = RUDP_PROTOCOL_UDP;
	if (r->Port == FUNC5(IP_PROTO_ICMPV4))
	{
		r->Protocol = RUDP_PROTOCOL_ICMP;

		// Generate the ICMP ID based on the process ID
#ifdef	OS_WIN32
		pid = (UINT)MsGetProcessId();
#else	// OS_WIN32
		pid = (UINT)FUNC30();
#endif	// OS_WIN32

		pid = FUNC1(pid);
		FUNC22(pid_hash, &pid, sizeof(UINT));

		pid_us = FUNC18(pid_hash);
		if (pid_us == 0 || pid_us == 0xFFFF)
		{
			pid_us = 1;
		}

		r->Client_IcmpId = pid_us;
	}
	else if (over_dns_mode)
	{
		r->Protocol = RUDP_PROTOCOL_DNS;
	}

	if (r->ServerMode)
	{
		r->NoNatTRegister = server_no_natt_register;

		if (r->Protocol == RUDP_PROTOCOL_ICMP || r->Protocol == RUDP_PROTOCOL_DNS)
		{
			// Never register to the NAT-T server in case of using the DNS or the ICMP
			r->NoNatTRegister = true;
		}
	}

	if (true
		)
	{
		FUNC19(r->CurrentRegisterHostname, sizeof(r->CurrentRegisterHostname), NULL);
	}

	if (r->ServerMode)
	{
		r->ProcInterrupts = proc_interrupts;
		r->ProcRpcRecv = proc_rpc_recv;
	}

	if (r->ServerMode && r->NoNatTRegister == false
		)
	{
		r->IpQueryThread = FUNC14(RUDPIpQueryThread, r);
	}

	FUNC3(r->UdpSock, r->SockEvent);

	r->Thread = FUNC14(RUDPMainThread, r);
	FUNC28(r->Thread);

	return r;
}
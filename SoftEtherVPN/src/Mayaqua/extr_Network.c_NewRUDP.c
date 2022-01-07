
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int tmp ;
typedef int USHORT ;
typedef scalar_t__ UINT ;
typedef size_t UCHAR ;
struct TYPE_17__ {char* SvcName; size_t RandPortId; scalar_t__ volatile* NatTGlobalUdpPort; int ServerMode; scalar_t__ Port; size_t* SvcNameHash; int Client_IcmpId; int Client_IcmpSeqNo; scalar_t__ Protocol; int NoNatTRegister; void* Thread; TYPE_1__* SockEvent; TYPE_2__* UdpSock; void* IpQueryThread; int * ProcRpcRecv; int * ProcInterrupts; int CurrentRegisterHostname; int NatT_SourceIpList; void* NatT_TranId; int NewSockQueue; void* NewSockConnectEvent; void* SendPacketList; void* TargetConnectedEvent; void* Param; int Lock; int Now; void* HaltEvent; void* SessionList; int Interrupt; void* NatT_SessionKey; } ;
struct TYPE_16__ {scalar_t__ LocalPort; int ref; } ;
struct TYPE_15__ {int ref; } ;
typedef TYPE_1__ SOCK_EVENT ;
typedef TYPE_2__ SOCK ;
typedef int RUDP_STACK_RPC_RECV_PROC ;
typedef int RUDP_STACK_INTERRUPTS_PROC ;
typedef TYPE_3__ RUDP_STACK ;
typedef int IP ;


 int AddRef (int ) ;
 scalar_t__ Endian32 (scalar_t__) ;
 int IP_PROTO_ICMPV4 ;
 scalar_t__ IsEmptyStr (char*) ;
 int JoinSockToSockEvent (TYPE_2__*,TYPE_1__*) ;
 int ListenTcpForPopupFirewallDialog () ;
 scalar_t__ MAKE_SPECIAL_PORT (int ) ;
 int MAX_SIZE ;
 int MsGetProcessId () ;
 void* NewEvent () ;
 int NewInterruptManager () ;
 void* NewList (int *) ;
 int NewListFast (int *) ;
 int NewLock () ;
 int NewQueue () ;
 TYPE_1__* NewSockEvent () ;
 void* NewThread (int ,TYPE_3__*) ;
 TYPE_2__* NewUDP4ForSpecificIp (int *,scalar_t__) ;
 TYPE_2__* NewUDPEx2 (scalar_t__,int,int *) ;
 TYPE_2__* NewUDPEx2RandMachineAndExePath (int,int *,int ,size_t) ;
 int READ_USHORT (size_t*) ;
 int * RUDPCompareSessionList ;
 int RUDPGetRegisterHostNameByIP (int ,int,int *) ;
 int RUDPIpQueryThread ;
 int RUDPMainThread ;
 scalar_t__ RUDP_PROTOCOL_DNS ;
 scalar_t__ RUDP_PROTOCOL_ICMP ;
 scalar_t__ RUDP_PROTOCOL_UDP ;
 int Rand32 () ;
 void* Rand64 () ;
 int SHA1_SIZE ;
 int Sha1 (size_t*,...) ;
 int StrCpy (char*,int,char*) ;
 int StrLen (char*) ;
 int StrLower (char*) ;
 int Tick64 () ;
 int Trim (char*) ;
 int WaitThreadInit (void*) ;
 TYPE_3__* ZeroMalloc (int) ;
 int getpid () ;
 scalar_t__* rand_port_numbers ;

RUDP_STACK *NewRUDP(bool server_mode, char *svc_name, RUDP_STACK_INTERRUPTS_PROC *proc_interrupts, RUDP_STACK_RPC_RECV_PROC *proc_rpc_recv, void *param, UINT port, SOCK *sock, SOCK_EVENT *sock_event, bool server_no_natt_register, bool over_dns_mode, IP *client_target_ip, volatile UINT *natt_global_udp_port, UCHAR rand_port_id, IP *listen_ip)
{
 RUDP_STACK *r;
 char tmp[MAX_SIZE];
 UCHAR pid_hash[SHA1_SIZE];
 UINT pid;
 USHORT pid_us;


 if (IsEmptyStr(svc_name))
 {
  return ((void*)0);
 }

 ListenTcpForPopupFirewallDialog();

 if (sock == ((void*)0))
 {
  if (server_mode == 0 && client_target_ip != ((void*)0))
  {
   sock = NewUDP4ForSpecificIp(client_target_ip, port);
  }
  else
  {
   if (rand_port_id == 0)
   {
    sock = NewUDPEx2(port, 0, listen_ip);
   }
   else
   {
    sock = NewUDPEx2RandMachineAndExePath(0, listen_ip, 0, rand_port_id);
   }
  }

  if (sock == ((void*)0))
  {
   return ((void*)0);
  }
 }
 else
 {
  AddRef(sock->ref);
 }

 if (port == 0)
 {
  port = sock->LocalPort;
 }

 if (rand_port_id != 0)
 {
  rand_port_numbers[rand_port_id] = port;
 }

 if (sock_event == ((void*)0))
 {
  sock_event = NewSockEvent();
 }
 else
 {
  AddRef(sock_event->ref);
 }

 r = ZeroMalloc(sizeof(RUDP_STACK));

 r->NatT_SessionKey = Rand64();

 StrCpy(r->SvcName, sizeof(r->SvcName), svc_name);
 r->RandPortId = rand_port_id;
 r->NatTGlobalUdpPort = natt_global_udp_port;
 r->ServerMode = server_mode;
 r->Interrupt = NewInterruptManager();
 r->SessionList = NewList(RUDPCompareSessionList);
 r->UdpSock = sock;
 r->Port = port;
 r->SockEvent = sock_event;
 r->HaltEvent = NewEvent();
 r->Now = Tick64();
 r->Lock = NewLock();
 r->Param = param;
 r->TargetConnectedEvent = NewEvent();
 r->SendPacketList = NewList(((void*)0));
 r->NewSockConnectEvent = NewEvent();
 r->NewSockQueue = NewQueue();
 r->NatT_TranId = Rand64();

 r->NatT_SourceIpList = NewListFast(((void*)0));

 StrCpy(tmp, sizeof(tmp), r->SvcName);
 Trim(tmp);
 StrLower(tmp);

 Sha1(r->SvcNameHash, tmp, StrLen(tmp));

 r->Client_IcmpId = (USHORT)(Rand32() % 65534 + 1);
 r->Client_IcmpSeqNo = (USHORT)(Rand32() % 65534 + 1);


 r->Protocol = RUDP_PROTOCOL_UDP;
 if (r->Port == MAKE_SPECIAL_PORT(IP_PROTO_ICMPV4))
 {
  r->Protocol = RUDP_PROTOCOL_ICMP;





  pid = (UINT)getpid();


  pid = Endian32(pid);
  Sha1(pid_hash, &pid, sizeof(UINT));

  pid_us = READ_USHORT(pid_hash);
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

   r->NoNatTRegister = 1;
  }
 }

 if (1
  )
 {
  RUDPGetRegisterHostNameByIP(r->CurrentRegisterHostname, sizeof(r->CurrentRegisterHostname), ((void*)0));
 }

 if (r->ServerMode)
 {
  r->ProcInterrupts = proc_interrupts;
  r->ProcRpcRecv = proc_rpc_recv;
 }

 if (r->ServerMode && r->NoNatTRegister == 0
  )
 {
  r->IpQueryThread = NewThread(RUDPIpQueryThread, r);
 }

 JoinSockToSockEvent(r->UdpSock, r->SockEvent);

 r->Thread = NewThread(RUDPMainThread, r);
 WaitThreadInit(r->Thread);

 return r;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_58__ TYPE_9__ ;
typedef struct TYPE_57__ TYPE_8__ ;
typedef struct TYPE_56__ TYPE_7__ ;
typedef struct TYPE_55__ TYPE_6__ ;
typedef struct TYPE_54__ TYPE_5__ ;
typedef struct TYPE_53__ TYPE_4__ ;
typedef struct TYPE_52__ TYPE_3__ ;
typedef struct TYPE_51__ TYPE_2__ ;
typedef struct TYPE_50__ TYPE_1__ ;
typedef struct TYPE_49__ TYPE_19__ ;
typedef struct TYPE_48__ TYPE_18__ ;
typedef struct TYPE_47__ TYPE_17__ ;
typedef struct TYPE_46__ TYPE_16__ ;
typedef struct TYPE_45__ TYPE_15__ ;
typedef struct TYPE_44__ TYPE_14__ ;
typedef struct TYPE_43__ TYPE_13__ ;
typedef struct TYPE_42__ TYPE_12__ ;
typedef struct TYPE_41__ TYPE_11__ ;
typedef struct TYPE_40__ TYPE_10__ ;


typedef int yahoo_ip ;
typedef int USHORT ;
typedef int UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_58__ {TYPE_1__* HubOption; scalar_t__ UseNat; } ;
struct TYPE_57__ {int * SendTube; int * RecvTube; } ;
struct TYPE_56__ {scalar_t__ LeaseTime; int ServerAddress; } ;
struct TYPE_55__ {TYPE_5__* TCPHeader; TYPE_2__* UDPHeader; } ;
struct TYPE_54__ {scalar_t__ SrcPort; scalar_t__ DstPort; } ;
struct TYPE_53__ {TYPE_3__* IPv4Header; } ;
struct TYPE_52__ {scalar_t__ SrcIP; scalar_t__ DstIP; } ;
struct TYPE_51__ {scalar_t__ SrcPort; scalar_t__ DstPort; } ;
struct TYPE_50__ {scalar_t__ DisableIpRawModeSecureNAT; scalar_t__ DisableKernelModeSecureNAT; } ;
struct TYPE_49__ {scalar_t__ num_item; } ;
struct TYPE_48__ {int Size; int Buf; } ;
struct TYPE_47__ {int Size; int Buf; } ;
struct TYPE_46__ {int ref; } ;
struct TYPE_45__ {scalar_t__ TransactionId; } ;
struct TYPE_44__ {TYPE_8__* Sock; int ClientIPAddress; } ;
struct TYPE_43__ {int Halt; int IsRawIpMode; int CancelLock; TYPE_16__* Cancel; TYPE_19__* RecvQueue; TYPE_19__* SendQueue; TYPE_9__* v; int * HaltTube; } ;
struct TYPE_42__ {int IsIpRawMode; int DnsServerIP; TYPE_7__ CurrentDhcpOptionList; TYPE_14__* Ipc; } ;
struct TYPE_41__ {scalar_t__ TypeL3; scalar_t__ TypeL4; int PayloadSize; TYPE_6__ L4; TYPE_4__ L3; scalar_t__ Payload; } ;
struct TYPE_40__ {int Flag; int SeqNumber; } ;
typedef int TUBE ;
typedef TYPE_10__ TCP_HEADER ;
typedef TYPE_11__ PKT ;
typedef TYPE_12__ NATIVE_STACK ;
typedef TYPE_13__ NATIVE_NAT ;
typedef TYPE_14__ IPC ;
typedef int IP ;
typedef int INTERRUPT_MANAGER ;
typedef TYPE_15__ DNSV4_HEADER ;
typedef TYPE_16__ CANCEL ;
typedef TYPE_17__ BUF ;
typedef TYPE_18__ BLOCK ;


 int AddInterrupt (int *,int) ;
 int AddRef (int ) ;
 int Cancel (TYPE_16__*) ;
 int Copy (int *,int *,int) ;
 int Debug (char*) ;
 scalar_t__ Endian16 (int) ;
 scalar_t__ Endian32 (int ) ;
 int FreeBlock (TYPE_18__*) ;
 int FreeBuf (TYPE_17__*) ;
 int FreeInterruptManager (int *) ;
 int FreePacketWithData (TYPE_11__*) ;
 TYPE_18__* GetNext (TYPE_19__*) ;
 scalar_t__ GetNextIntervalForInterrupt (int *) ;
 int IPCDhcpRenewIP (TYPE_14__*,int *) ;
 int IPCFlushArpTable (TYPE_14__*) ;
 int IPCProcessL3Events (TYPE_14__*) ;
 TYPE_18__* IPCRecvIPv4 (TYPE_14__*) ;
 int IPCSendIPv4 (TYPE_14__*,int ,int ) ;
 scalar_t__ IPC_DHCP_DEFAULT_LEASE ;
 int IPC_DHCP_MIN_LEASE ;
 scalar_t__ IPToUINT (int *) ;
 int IP_PROTO_TCP ;
 int IP_PROTO_UDP ;
 int InsertQueue (TYPE_19__*,TYPE_11__*) ;
 int IsTubeConnected (int *) ;
 scalar_t__ L3_IPV4 ;
 scalar_t__ L4_TCP ;
 scalar_t__ L4_UDP ;
 int Lock (int ) ;
 int LockQueue (TYPE_19__*) ;
 int MAX (scalar_t__,int ) ;
 scalar_t__ MIN (scalar_t__,int) ;
 int NN_CHECK_HOSTNAME ;
 scalar_t__ NN_MAX_QUEUE_LENGTH ;
 scalar_t__ NN_POLL_CONNECTIVITY_INTERVAL ;
 scalar_t__ NN_POLL_CONNECTIVITY_TIMEOUT ;
 int NewBuf () ;
 int * NewInterruptManager () ;
 int NnBuildDnsQueryPacket (int ,int) ;
 TYPE_17__* NnBuildIpPacket (int ,scalar_t__,scalar_t__,int ,int ) ;
 int NnBuildTcpPacket (int ,scalar_t__,int,scalar_t__,int,scalar_t__,scalar_t__,int,int,int) ;
 int NnBuildUdpPacket (int ,scalar_t__,int,scalar_t__,int) ;
 int NnGenSrcPort (int ) ;
 scalar_t__ NnParseDnsResponsePacket (scalar_t__,int,int *) ;
 TYPE_11__* ParsePacketIPv4WithDummyMacHeader (int ,int ) ;
 int Rand16 () ;
 scalar_t__ Rand32 () ;
 int ReleaseCancel (TYPE_16__*) ;
 int TCP_ACK ;
 int TCP_RST ;
 int TCP_SYN ;
 int Tick64 () ;
 int UINTToIP (int *,int ) ;
 int Unlock (int ) ;
 int UnlockQueue (TYPE_19__*) ;
 int WaitForTubes (int **,scalar_t__,scalar_t__) ;
 int Zero (int *,int) ;

void NnMainLoop(NATIVE_NAT *t, NATIVE_STACK *a)
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
 bool wait_for_dns = 0;
 UINT64 tcp_last_recv_tick = 0;
 UINT dhcp_renew_interval;
 UINT64 next_dhcp_renew_tick = 0;

 if (t == ((void*)0) || a == ((void*)0))
 {
  return;
 }

 dhcp_renew_interval = a->CurrentDhcpOptionList.LeaseTime;

 if (dhcp_renew_interval == 0)
 {
  dhcp_renew_interval = IPC_DHCP_DEFAULT_LEASE;
 }

 dhcp_renew_interval = MAX(dhcp_renew_interval, IPC_DHCP_MIN_LEASE) / 2;

 interrupt = NewInterruptManager();

 ipc = a->Ipc;

 tubes[num_tubes++] = ipc->Sock->RecvTube;

 tubes[num_tubes++] = t->HaltTube;

 Zero(&yahoo_ip, sizeof(yahoo_ip));

 next_poll_tick = Tick64() + (UINT64)NN_POLL_CONNECTIVITY_INTERVAL;
 AddInterrupt(interrupt, next_poll_tick);

 tcp_last_recv_tick = Tick64();
 next_dhcp_renew_tick = Tick64() + (UINT64)dhcp_renew_interval * 1000;
 AddInterrupt(interrupt, next_dhcp_renew_tick);

 while (t->Halt == 0 && t->v->UseNat)
 {
  UINT64 now = Tick64();
  bool call_cancel = 0;
  bool state_changed = 0;
  UINT wait_interval;

  if (t->v->HubOption != ((void*)0))
  {
   if (t->IsRawIpMode == 0 && t->v->HubOption->DisableKernelModeSecureNAT)
   {
    break;
   }
   if (t->IsRawIpMode && t->v->HubOption->DisableIpRawModeSecureNAT)
   {
    break;
   }
  }

  IPCFlushArpTable(ipc);
  call_cancel = 0;

LABEL_RESTART:
  state_changed = 0;

  if (next_poll_tick == 0 || next_poll_tick <= now)
  {
   BUF *dns_query;

   dns_src_port = NnGenSrcPort(a->IsIpRawMode);
   dns_tran_id = Rand16();


   dns_query = NnBuildIpPacket(NnBuildUdpPacket(NnBuildDnsQueryPacket(NN_CHECK_HOSTNAME, dns_tran_id),
    IPToUINT(&ipc->ClientIPAddress), dns_src_port, IPToUINT(&a->DnsServerIP), 53),
    IPToUINT(&ipc->ClientIPAddress), IPToUINT(&a->DnsServerIP), IP_PROTO_UDP, 0);

   IPCSendIPv4(ipc, dns_query->Buf, dns_query->Size);

   wait_for_dns = 1;

   FreeBuf(dns_query);

   next_poll_tick = now + (UINT64)NN_POLL_CONNECTIVITY_INTERVAL;
   AddInterrupt(interrupt, next_poll_tick);
  }

  if (next_dhcp_renew_tick == 0 || next_dhcp_renew_tick <= now)
  {
   IP ip;

   UINTToIP(&ip, a->CurrentDhcpOptionList.ServerAddress);

   IPCDhcpRenewIP(ipc, &ip);

   next_dhcp_renew_tick = now + (UINT64)dhcp_renew_interval * 1000;
   AddInterrupt(interrupt, next_dhcp_renew_tick);
  }


  LockQueue(t->SendQueue);
  {
   while (1)
   {
    BLOCK *b = GetNext(t->SendQueue);

    if (b == ((void*)0))
    {
     break;
    }

    IPCSendIPv4(ipc, b->Buf, b->Size);

    state_changed = 1;

    FreeBlock(b);
   }
  }
  UnlockQueue(t->SendQueue);


  IPCProcessL3Events(ipc);

  LockQueue(t->RecvQueue);
  {
   while (1)
   {

    BLOCK *b = IPCRecvIPv4(ipc);
    PKT *pkt;

    if (b == ((void*)0))
    {

     break;
    }


    pkt = ParsePacketIPv4WithDummyMacHeader(b->Buf, b->Size);

    FreeBlock(b);

    if (pkt != ((void*)0))
    {
     bool no_store = 0;


     if (wait_for_dns)
     {
      if (pkt->TypeL3 == L3_IPV4 && pkt->TypeL4 == L4_UDP &&
       pkt->L3.IPv4Header->SrcIP == IPToUINT(&a->DnsServerIP) &&
       pkt->L3.IPv4Header->DstIP == IPToUINT(&ipc->ClientIPAddress) &&
       pkt->L4.UDPHeader->SrcPort == Endian16(53) && pkt->L4.UDPHeader->DstPort == Endian16(dns_src_port))
      {
       DNSV4_HEADER *dns_header = (DNSV4_HEADER *)pkt->Payload;
       if (pkt->PayloadSize >= sizeof(DNSV4_HEADER))
       {
        if (dns_header->TransactionId == Endian16(dns_tran_id))
        {
         IP ret_ip;

         if (NnParseDnsResponsePacket(pkt->Payload, pkt->PayloadSize, &ret_ip))
         {
          BUF *tcp_query;

          Copy(&yahoo_ip, &ret_ip, sizeof(IP));




          no_store = 1;

          tcp_src_port = NnGenSrcPort(a->IsIpRawMode);


          tcp_seq = Rand32();
          tcp_query = NnBuildIpPacket(NnBuildTcpPacket(NewBuf(), IPToUINT(&ipc->ClientIPAddress), tcp_src_port,
           IPToUINT(&yahoo_ip), 80, tcp_seq, 0, TCP_SYN, 8192, 1414),
           IPToUINT(&ipc->ClientIPAddress), IPToUINT(&yahoo_ip), IP_PROTO_TCP, 0);

          IPCSendIPv4(ipc, tcp_query->Buf, tcp_query->Size);

          FreeBuf(tcp_query);

          wait_for_dns = 0;
         }
        }
       }
      }
     }

     if (pkt->TypeL3 == L3_IPV4 && pkt->TypeL4 == L4_TCP &&
      pkt->L3.IPv4Header->SrcIP == IPToUINT(&yahoo_ip) &&
      pkt->L3.IPv4Header->DstIP == IPToUINT(&ipc->ClientIPAddress) &&
      pkt->L4.TCPHeader->SrcPort == Endian16(80) && pkt->L4.TCPHeader->DstPort == Endian16(tcp_src_port))
     {
      TCP_HEADER *tcp_header = (TCP_HEADER *)pkt->L4.TCPHeader;
      if ((tcp_header->Flag & TCP_SYN) && (tcp_header->Flag & TCP_ACK))
      {

       BUF *tcp_query;
       UINT recv_seq = Endian32(tcp_header->SeqNumber) + 1;

       no_store = 1;


       tcp_query = NnBuildIpPacket(NnBuildTcpPacket(NewBuf(), IPToUINT(&ipc->ClientIPAddress), tcp_src_port,
        IPToUINT(&yahoo_ip), 80, tcp_seq + 1, recv_seq, TCP_RST | TCP_ACK, 8192, 0),
        IPToUINT(&ipc->ClientIPAddress), IPToUINT(&yahoo_ip), IP_PROTO_TCP, 0);

       IPCSendIPv4(ipc, tcp_query->Buf, tcp_query->Size);

       FreeBuf(tcp_query);

       tcp_last_recv_tick = now;
      }
     }

     if (t->RecvQueue->num_item > NN_MAX_QUEUE_LENGTH)
     {
      no_store = 1;
     }

     if (no_store == 0)
     {

      InsertQueue(t->RecvQueue, pkt);
      call_cancel = 1;
      state_changed = 1;
     }
     else
     {

      FreePacketWithData(pkt);
     }
    }
   }
  }
  UnlockQueue(t->RecvQueue);

  if (state_changed)
  {
   goto LABEL_RESTART;
  }

  if (call_cancel)
  {
   CANCEL *c = ((void*)0);

   Lock(t->CancelLock);
   {
    c = t->Cancel;

    AddRef(c->ref);
   }
   Unlock(t->CancelLock);

   Cancel(c);

   ReleaseCancel(c);
  }

  if (IsTubeConnected(ipc->Sock->RecvTube) == 0 || IsTubeConnected(ipc->Sock->SendTube) == 0)
  {

   break;
  }

  if ((tcp_last_recv_tick + (UINT64)NN_POLL_CONNECTIVITY_TIMEOUT) < now)
  {

   Debug("NN_POLL_CONNECTIVITY_TIMEOUT\n");
   break;
  }

  wait_interval = GetNextIntervalForInterrupt(interrupt);
  wait_interval = MIN(wait_interval, 1234);

  if (wait_interval != 0)
  {
   WaitForTubes(tubes, num_tubes, wait_interval);
  }
 }

 FreeInterruptManager(interrupt);
}

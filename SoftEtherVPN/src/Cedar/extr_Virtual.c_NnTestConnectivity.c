
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_9__ ;
typedef struct TYPE_39__ TYPE_8__ ;
typedef struct TYPE_38__ TYPE_7__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;
typedef struct TYPE_31__ TYPE_14__ ;
typedef struct TYPE_30__ TYPE_13__ ;
typedef struct TYPE_29__ TYPE_12__ ;
typedef struct TYPE_28__ TYPE_11__ ;
typedef struct TYPE_27__ TYPE_10__ ;


typedef int yahoo_ip ;
typedef int USHORT ;
typedef scalar_t__ UINT64 ;
typedef int UINT ;
struct TYPE_36__ {TYPE_4__* TCPHeader; TYPE_1__* UDPHeader; } ;
struct TYPE_34__ {TYPE_2__* IPv4Header; } ;
struct TYPE_40__ {scalar_t__ TypeL3; scalar_t__ TypeL4; int PayloadSize; TYPE_5__ L4; TYPE_3__ L3; scalar_t__ Payload; } ;
struct TYPE_39__ {int Flag; int SeqNumber; } ;
struct TYPE_38__ {int * RecvTube; int * SendTube; } ;
struct TYPE_37__ {int MyPhysicalIPForce; } ;
struct TYPE_35__ {scalar_t__ SrcPort; scalar_t__ DstPort; } ;
struct TYPE_33__ {scalar_t__ SrcIP; scalar_t__ DstIP; } ;
struct TYPE_32__ {scalar_t__ SrcPort; scalar_t__ DstPort; } ;
struct TYPE_31__ {int Size; int Buf; } ;
struct TYPE_30__ {int Size; int Buf; } ;
struct TYPE_29__ {scalar_t__ TransactionId; } ;
struct TYPE_28__ {int ClientIPAddress; TYPE_7__* Sock; } ;
struct TYPE_27__ {scalar_t__ IsIpRawMode; int DnsServerIP; TYPE_11__* Ipc; int DnsServerIP2; TYPE_6__* Eth; } ;
typedef int TUBE ;
typedef TYPE_8__ TCP_HEADER ;
typedef TYPE_9__ PKT ;
typedef TYPE_10__ NATIVE_STACK ;
typedef TYPE_11__ IPC ;
typedef int IP ;
typedef int INTERRUPT_MANAGER ;
typedef TYPE_12__ DNSV4_HEADER ;
typedef TYPE_13__ BUF ;
typedef TYPE_14__ BLOCK ;


 int AddInterrupt (int *,scalar_t__) ;
 int Copy (int *,int *,int) ;
 int Debug (char*,...) ;
 scalar_t__ Endian16 (int) ;
 int Endian32 (int ) ;
 int FreeBlock (TYPE_14__*) ;
 int FreeBuf (TYPE_13__*) ;
 int FreeInterruptManager (int *) ;
 int FreePacketWithData (TYPE_9__*) ;
 int GetMyPrivateIP (int *,int) ;
 int GetNextIntervalForInterrupt (int *) ;
 int IPCFlushArpTable (TYPE_11__*) ;
 int IPCProcessL3Events (TYPE_11__*) ;
 TYPE_14__* IPCRecvIPv4 (TYPE_11__*) ;
 int IPCSendIPv4 (TYPE_11__*,int ,int ) ;
 scalar_t__ IPToUINT (int *) ;
 int IP_PROTO_TCP ;
 int IP_PROTO_UDP ;
 int IsTubeConnected (int *) ;
 int IsZeroIP (int *) ;
 scalar_t__ L3_IPV4 ;
 scalar_t__ L4_TCP ;
 scalar_t__ L4_UDP ;
 scalar_t__ NN_CHECK_CONNECTIVITY_INTERVAL ;
 scalar_t__ NN_CHECK_CONNECTIVITY_TIMEOUT ;
 int NN_CHECK_HOSTNAME ;
 int NewBuf () ;
 int * NewInterruptManager () ;
 int NnBuildDnsQueryPacket (int ,int) ;
 TYPE_13__* NnBuildIpPacket (int ,scalar_t__,scalar_t__,int ,int ) ;
 int NnBuildTcpPacket (int ,scalar_t__,int,scalar_t__,int,int,int,int,int,int) ;
 int NnBuildUdpPacket (int ,scalar_t__,int,scalar_t__,int) ;
 int NnGenSrcPort (scalar_t__) ;
 scalar_t__ NnParseDnsResponsePacket (scalar_t__,int,int *) ;
 int NsStartIpTablesTracking (TYPE_10__*) ;
 TYPE_9__* ParsePacketIPv4WithDummyMacHeader (int ,int ) ;
 int Rand16 () ;
 int Rand32 () ;
 int SleepThread (int) ;
 int TCP_ACK ;
 int TCP_RST ;
 int TCP_SYN ;
 scalar_t__ Tick64 () ;
 int UINTToIP (int *,scalar_t__) ;
 int WHERE ;
 int WaitForTubes (int **,int,int ) ;
 int Zero (int *,int) ;

bool NnTestConnectivity(NATIVE_STACK *a, TUBE *halt_tube)
{
 BUF *dns_query;
 BUF *dns_query2;
 bool ok = 0;
 USHORT dns_tran_id = Rand16();
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

 if (a == ((void*)0))
 {
  return 0;
 }

 src_port = NnGenSrcPort(a->IsIpRawMode);

 Copy(&using_dns, &a->DnsServerIP, sizeof(IP));


 if (a->IsIpRawMode)
 {
  if (GetMyPrivateIP(&my_priv_ip, 0) == 0)
  {
   Debug("NnTestConnectivity: GetMyPrivateIP failed.\n");
   return 0;
  }
  else
  {
   Debug("NnTestConnectivity: GetMyPrivateIP ok: %r\n", &my_priv_ip);

   if (a->Eth != ((void*)0))
   {
    Copy(&a->Eth->MyPhysicalIPForce, &my_priv_ip, sizeof(IP));
   }
  }
 }

 ipc = a->Ipc;
 interrupt = NewInterruptManager();

 tubes[num_tubes++] = ipc->Sock->RecvTube;
 tubes[num_tubes++] = ipc->Sock->SendTube;

 if (halt_tube != ((void*)0))
 {
  tubes[num_tubes++] = halt_tube;
 }

 Zero(&yahoo_ip, sizeof(yahoo_ip));


 dns_query = NnBuildIpPacket(NnBuildUdpPacket(NnBuildDnsQueryPacket(NN_CHECK_HOSTNAME, dns_tran_id),
  IPToUINT(&ipc->ClientIPAddress), src_port, IPToUINT(&a->DnsServerIP), 53),
  IPToUINT(&ipc->ClientIPAddress), IPToUINT(&a->DnsServerIP), IP_PROTO_UDP, 0);

 dns_query2 = NnBuildIpPacket(NnBuildUdpPacket(NnBuildDnsQueryPacket(NN_CHECK_HOSTNAME, dns_tran_id),
  IPToUINT(&ipc->ClientIPAddress), src_port, IPToUINT(&a->DnsServerIP), 53),
  IPToUINT(&ipc->ClientIPAddress), IPToUINT(&a->DnsServerIP2), IP_PROTO_UDP, 0);

 giveup_time = Tick64() + NN_CHECK_CONNECTIVITY_TIMEOUT;
 AddInterrupt(interrupt, giveup_time);
 while (1)
 {
  UINT64 now = Tick64();

  IPCFlushArpTable(a->Ipc);

  if (now >= giveup_time)
  {
   break;
  }


  if (next_send_tick == 0 || next_send_tick <= now)
  {
   next_send_tick = now + (UINT64)NN_CHECK_CONNECTIVITY_INTERVAL;

   AddInterrupt(interrupt, next_send_tick);

   if ((num_send_dns % 2) == 0)
   {
    IPCSendIPv4(ipc, dns_query->Buf, dns_query->Size);
   }
   else
   {
    IPCSendIPv4(ipc, dns_query2->Buf, dns_query2->Size);
   }

   num_send_dns++;
  }


  IPCProcessL3Events(ipc);

  while (1)
  {

   BLOCK *b = IPCRecvIPv4(ipc);
   PKT *pkt;

   if (b == ((void*)0))
   {
    break;
   }


   pkt = ParsePacketIPv4WithDummyMacHeader(b->Buf, b->Size);

   if (pkt != ((void*)0))
   {
    if (pkt->TypeL3 == L3_IPV4 && pkt->TypeL4 == L4_UDP &&
     (pkt->L3.IPv4Header->SrcIP == IPToUINT(&a->DnsServerIP) ||
      pkt->L3.IPv4Header->SrcIP == IPToUINT(&a->DnsServerIP2)) &&
     pkt->L3.IPv4Header->DstIP == IPToUINT(&ipc->ClientIPAddress) &&
     pkt->L4.UDPHeader->SrcPort == Endian16(53) && pkt->L4.UDPHeader->DstPort == Endian16(src_port))
    {
     DNSV4_HEADER *dns_header = (DNSV4_HEADER *)pkt->Payload;
     if (pkt->PayloadSize >= sizeof(DNSV4_HEADER))
     {
      if (dns_header->TransactionId == Endian16(dns_tran_id))
      {
       IP ret_ip;

       if (NnParseDnsResponsePacket(pkt->Payload, pkt->PayloadSize, &ret_ip))
       {
        UINTToIP(&using_dns, pkt->L3.IPv4Header->SrcIP);
        Debug("NativeStack: Using DNS: %r\n", &using_dns);

        Copy(&yahoo_ip, &ret_ip, sizeof(IP));
       }
      }
     }
    }
   }

   FreePacketWithData(pkt);
   FreeBlock(b);
  }

  if ((halt_tube != ((void*)0) && IsTubeConnected(halt_tube) == 0) ||
   IsTubeConnected(ipc->Sock->SendTube) == 0 || IsTubeConnected(ipc->Sock->RecvTube) == 0)
  {

   break;
  }

  if (IsZeroIP(&yahoo_ip) == 0)
  {

   break;
  }


  WaitForTubes(tubes, num_tubes, GetNextIntervalForInterrupt(interrupt));
 }

 FreeBuf(dns_query);
 FreeBuf(dns_query2);

 if (IsZeroIP(&yahoo_ip) == 0)
 {
  BUF *tcp_query;
  UINT seq = Rand32();
  bool tcp_get_response = 0;
  UINT recv_seq = 0;


  giveup_time = Tick64() + NN_CHECK_CONNECTIVITY_TIMEOUT;
  AddInterrupt(interrupt, giveup_time);


  tcp_query = NnBuildIpPacket(NnBuildTcpPacket(NewBuf(), IPToUINT(&ipc->ClientIPAddress), src_port,
   IPToUINT(&yahoo_ip), 80, seq, 0, TCP_SYN, 8192, 1414),
   IPToUINT(&ipc->ClientIPAddress), IPToUINT(&yahoo_ip), IP_PROTO_TCP, 0);

  Debug("Test TCP to %r\n", &yahoo_ip);

  next_send_tick = 0;

  while (1)
  {
   UINT64 now = Tick64();

   IPCFlushArpTable(a->Ipc);

   if (now >= giveup_time)
   {
    break;
   }


   if (next_send_tick == 0 || next_send_tick <= now)
   {
    next_send_tick = now + (UINT64)NN_CHECK_CONNECTIVITY_INTERVAL;

    AddInterrupt(interrupt, next_send_tick);

    IPCSendIPv4(ipc, tcp_query->Buf, tcp_query->Size);
   }


   IPCProcessL3Events(ipc);

   while (1)
   {

    BLOCK *b = IPCRecvIPv4(ipc);
    PKT *pkt;

    if (b == ((void*)0))
    {
     break;
    }


    pkt = ParsePacketIPv4WithDummyMacHeader(b->Buf, b->Size);

    if (pkt != ((void*)0))
    {
     if (pkt->TypeL3 == L3_IPV4 && pkt->TypeL4 == L4_TCP &&
      pkt->L3.IPv4Header->SrcIP == IPToUINT(&yahoo_ip) &&
      pkt->L3.IPv4Header->DstIP == IPToUINT(&ipc->ClientIPAddress) &&
      pkt->L4.TCPHeader->SrcPort == Endian16(80) && pkt->L4.TCPHeader->DstPort == Endian16(src_port))
     {
      TCP_HEADER *tcp_header = (TCP_HEADER *)pkt->L4.TCPHeader;
      if ((tcp_header->Flag & TCP_SYN) && (tcp_header->Flag & TCP_ACK))
      {

       tcp_get_response = 1;
       recv_seq = Endian32(tcp_header->SeqNumber);
      }
     }
    }

    FreePacketWithData(pkt);
    FreeBlock(b);
   }

   if ((halt_tube != ((void*)0) && IsTubeConnected(halt_tube) == 0) ||
    IsTubeConnected(ipc->Sock->SendTube) == 0 || IsTubeConnected(ipc->Sock->RecvTube) == 0)
   {

    break;
   }

   if (tcp_get_response)
   {
    WHERE;
    break;
   }


   WaitForTubes(tubes, num_tubes, GetNextIntervalForInterrupt(interrupt));
  }

  FreeBuf(tcp_query);


  if (recv_seq != 0)
  {
   recv_seq++;
  }

  tcp_query = NnBuildIpPacket(NnBuildTcpPacket(NewBuf(), IPToUINT(&ipc->ClientIPAddress), src_port,
   IPToUINT(&yahoo_ip), 80, seq + 1, recv_seq, TCP_RST | TCP_ACK, 8192, 0),
   IPToUINT(&ipc->ClientIPAddress), IPToUINT(&yahoo_ip), IP_PROTO_TCP, 0);

  IPCSendIPv4(ipc, tcp_query->Buf, tcp_query->Size);

  FreeBuf(tcp_query);

  SleepThread(100);

  if (tcp_get_response)
  {
   ok = 1;
  }
 }

 FreeInterruptManager(interrupt);

 if (ok)
 {
  if (IsZeroIP(&using_dns) == 0)
  {
   Copy(&a->DnsServerIP, &using_dns, sizeof(IP));
  }

  if (a->IsIpRawMode)
  {
   if (NsStartIpTablesTracking(a) == 0)
   {
    Debug("NsStartIpTablesTracking failed.\n");
    ok = 0;
   }
  }
 }

 return ok;
}

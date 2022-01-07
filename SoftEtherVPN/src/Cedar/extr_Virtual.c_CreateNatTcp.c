
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int NatTable; int TcpMss; int Now; int Counter; } ;
typedef TYPE_1__ VH ;
typedef void* UINT ;
struct TYPE_19__ {scalar_t__ SecureNAT_MaxTcpSynSentPerIp; scalar_t__ SecureNAT_MaxTcpSessionsPerIp; } ;
struct TYPE_18__ {int DisconnectNow; int CurrentRTT; int TcpSendTimeoutSpan; int Id; int SendSeqInit; int TcpStatus; void* RecvFifo; void* SendFifo; int TcpRecvMaxSegmentSize; int TcpSendMaxSegmentSize; int * Sock; int TcpLastRecvAckTime; int LastCommTime; int CreatedTime; void* DestPort; void* DestIp; void* SrcPort; void* SrcIp; int Protocol; int lock; TYPE_1__* v; } ;
typedef TYPE_2__ NAT_ENTRY ;
typedef int IP ;
typedef TYPE_3__ HUB_OPTION ;


 int Add (int ,TYPE_2__*) ;
 int CanCreateNewNatEntry (TYPE_1__*) ;
 int Debug (char*,char*,void*,char*,void*) ;
 int DisconnectNatEntryNow (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ GetNumNatEntriesPerIp (TYPE_1__*,void*,int ,int) ;
 TYPE_2__* GetOldestNatEntryOfIp (TYPE_1__*,void*,int ) ;
 int IPToStr (char*,int ,int *) ;
 int Inc (int ) ;
 int MAX_SIZE ;
 int NAT_INITIAL_RTT_VALUE ;
 int NAT_TCP ;
 int NAT_TCP_CONNECTING ;
 int NLog (TYPE_1__*,char*,int ,char*,void*,char*,void*) ;
 TYPE_3__* NatGetHubOption (TYPE_1__*) ;
 void* NewFifo () ;
 int NewLock () ;
 int Rand32 () ;
 int UINTToIP (int *,void*) ;
 TYPE_2__* ZeroMalloc (int) ;

NAT_ENTRY *CreateNatTcp(VH *v, UINT src_ip, UINT src_port, UINT dest_ip, UINT dest_port)
{
 NAT_ENTRY *n;
 HUB_OPTION *o;

 if (v == ((void*)0))
 {
  return ((void*)0);
 }

 if (CanCreateNewNatEntry(v) == 0)
 {
  return ((void*)0);
 }

 o = NatGetHubOption(v);


 if (o != ((void*)0) && o->SecureNAT_MaxTcpSynSentPerIp != 0)
 {
  if (GetNumNatEntriesPerIp(v, src_ip, NAT_TCP, 1) >= o->SecureNAT_MaxTcpSynSentPerIp)
  {
   return ((void*)0);
  }
 }


 if (o != ((void*)0) && o->SecureNAT_MaxTcpSessionsPerIp != 0)
 {
  if (GetNumNatEntriesPerIp(v, src_ip, NAT_TCP, 0) >= o->SecureNAT_MaxTcpSessionsPerIp)
  {
   NAT_ENTRY *oldest = GetOldestNatEntryOfIp(v, src_ip, NAT_TCP);

   if (oldest != ((void*)0))
   {
    DisconnectNatEntryNow(v, oldest);
   }
  }
 }


 n = ZeroMalloc(sizeof(NAT_ENTRY));
 n->Id = Inc(v->Counter);
 n->v = v;
 n->lock = NewLock();
 n->Protocol = NAT_TCP;
 n->SrcIp = src_ip;
 n->SrcPort = src_port;
 n->DestIp = dest_ip;
 n->DestPort = dest_port;
 n->CreatedTime = n->LastCommTime = v->Now;
 n->TcpLastRecvAckTime = v->Now;
 n->Sock = ((void*)0);
 n->DisconnectNow = 0;
 n->TcpSendMaxSegmentSize = n->TcpRecvMaxSegmentSize = v->TcpMss;

 n->SendFifo = NewFifo();
 n->RecvFifo = NewFifo();

 n->TcpStatus = NAT_TCP_CONNECTING;

 n->SendSeqInit = Rand32();
 n->CurrentRTT = NAT_INITIAL_RTT_VALUE;
 n->TcpSendTimeoutSpan = n->CurrentRTT * 2;


 Add(v->NatTable, n);



 {
  IP ip1, ip2;
  char s1[MAX_SIZE], s2[MAX_SIZE];
  UINTToIP(&ip1, src_ip);
  UINTToIP(&ip2, dest_ip);
  IPToStr(s1, 0, &ip1);
  IPToStr(s2, 0, &ip2);
  Debug("NAT_ENTRY: CreateNatTcp %s %u -> %s %u\n", s1, src_port, s2, dest_port);

  NLog(v, "LH_NAT_TCP_CREATED", n->Id, s1, src_port, s2, dest_port);
 }


 return n;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int NatTable; int SockEvent; int Now; int Counter; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_18__ {scalar_t__ SecureNAT_MaxIcmpSessionsPerIp; } ;
struct TYPE_17__ {int UdpSocketCreated; scalar_t__ IcmpOriginalCopySize; int IcmpOriginalCopy; void* UdpRecvQueue; void* UdpSendQueue; int LastCommTime; int CreatedTime; scalar_t__ DestPort; scalar_t__ DestIp; scalar_t__ SrcPort; scalar_t__ SrcIp; int Protocol; int lock; TYPE_1__* v; int Id; } ;
typedef TYPE_2__ NAT_ENTRY ;
typedef int IP ;
typedef TYPE_3__ HUB_OPTION ;


 int Add (int ,TYPE_2__*) ;
 int CanCreateNewNatEntry (TYPE_1__*) ;
 int Clone (int *,scalar_t__) ;
 int Debug (char*,char*,scalar_t__,char*,scalar_t__) ;
 int DisconnectNatEntryNow (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ GetNumNatEntriesPerIp (TYPE_1__*,scalar_t__,int ,int) ;
 TYPE_2__* GetOldestNatEntryOfIp (TYPE_1__*,scalar_t__,int ) ;
 int IPToStr (char*,int ,int *) ;
 int Inc (int ) ;
 int MAX_SIZE ;
 int NAT_ICMP ;
 TYPE_3__* NatGetHubOption (TYPE_1__*) ;
 int NewLock () ;
 void* NewQueue () ;
 int SetSockEvent (int ) ;
 int UINTToIP (int *,scalar_t__) ;
 TYPE_2__* ZeroMalloc (int) ;

NAT_ENTRY *CreateNatIcmp(VH *v, UINT src_ip, UINT src_port, UINT dest_ip, UINT dest_port, UCHAR *original_copy, UINT original_copy_size)
{
 NAT_ENTRY *n;
 HUB_OPTION *o;

 if (v == ((void*)0) || original_copy == ((void*)0) || original_copy_size == 0)
 {
  return ((void*)0);
 }

 if (CanCreateNewNatEntry(v) == 0)
 {
  return ((void*)0);
 }

 o = NatGetHubOption(v);
 if (o != ((void*)0) && o->SecureNAT_MaxIcmpSessionsPerIp != 0)
 {
  if (GetNumNatEntriesPerIp(v, src_ip, NAT_ICMP, 0) >= o->SecureNAT_MaxIcmpSessionsPerIp)
  {
   NAT_ENTRY *oldest = GetOldestNatEntryOfIp(v, src_ip, NAT_ICMP);

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
 n->Protocol = NAT_ICMP;
 n->SrcIp = src_ip;
 n->SrcPort = src_port;
 n->DestIp = dest_ip;
 n->DestPort = dest_port;

 n->CreatedTime = n->LastCommTime = v->Now;

 n->UdpSendQueue = NewQueue();
 n->UdpRecvQueue = NewQueue();

 n->UdpSocketCreated = 0;

 n->IcmpOriginalCopy = Clone(original_copy, original_copy_size);
 n->IcmpOriginalCopySize = original_copy_size;

 SetSockEvent(v->SockEvent);


 {
  IP ip1, ip2;
  char s1[MAX_SIZE], s2[MAX_SIZE];
  UINTToIP(&ip1, src_ip);
  UINTToIP(&ip2, dest_ip);
  IPToStr(s1, 0, &ip1);
  IPToStr(s2, 0, &ip2);
  Debug("NAT_ENTRY: CreateNatIcmp %s %u -> %s %u\n", s1, src_port, s2, dest_port);


 }


 Add(v->NatTable, n);

 return n;
}

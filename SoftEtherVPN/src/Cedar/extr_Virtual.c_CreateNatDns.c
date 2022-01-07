
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int NatTable; int Now; int Counter; } ;
typedef TYPE_1__ VH ;
typedef void* UINT ;
struct TYPE_18__ {scalar_t__ SecureNAT_MaxDnsSessionsPerIp; } ;
struct TYPE_17__ {int DisconnectNow; int DnsGetIpFromHost; int DnsTargetHostName; int LastCommTime; int CreatedTime; void* DnsTransactionId; void* DestPort; void* DestIp; void* SrcPort; void* SrcIp; int Protocol; int lock; TYPE_1__* v; int Id; } ;
typedef TYPE_2__ NAT_ENTRY ;
typedef int IP ;
typedef TYPE_3__ HUB_OPTION ;


 int Add (int ,TYPE_2__*) ;
 int CanCreateNewNatEntry (TYPE_1__*) ;
 int CopyStr (char*) ;
 int Debug (char*,char*,void*,char*,void*) ;
 int DisconnectNatEntryNow (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ GetNumNatEntriesPerIp (TYPE_1__*,void*,int ,int) ;
 TYPE_2__* GetOldestNatEntryOfIp (TYPE_1__*,void*,int ) ;
 int IPToStr (char*,int ,int *) ;
 int Inc (int ) ;
 int MAX_SIZE ;
 int NAT_DNS ;
 TYPE_3__* NatGetHubOption (TYPE_1__*) ;
 int NewLock () ;
 int UINTToIP (int *,void*) ;
 TYPE_2__* ZeroMalloc (int) ;

NAT_ENTRY *CreateNatDns(VH *v, UINT src_ip, UINT src_port, UINT dest_ip, UINT dest_port,
      UINT transaction_id, bool dns_get_ip_from_host, char *dns_target_host_name)
{
 NAT_ENTRY *n;
 HUB_OPTION *o;

 if (v == ((void*)0) || dns_target_host_name == ((void*)0))
 {
  return ((void*)0);
 }

 if (CanCreateNewNatEntry(v) == 0)
 {
  return ((void*)0);
 }

 o = NatGetHubOption(v);
 if (o != ((void*)0) && o->SecureNAT_MaxDnsSessionsPerIp != 0)
 {
  if (GetNumNatEntriesPerIp(v, src_ip, NAT_DNS, 0) >= o->SecureNAT_MaxDnsSessionsPerIp)
  {
   NAT_ENTRY *oldest = GetOldestNatEntryOfIp(v, src_ip, NAT_DNS);

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
 n->Protocol = NAT_DNS;
 n->SrcIp = src_ip;
 n->SrcPort = src_port;
 n->DestIp = dest_ip;
 n->DestPort = dest_port;
 n->DnsTransactionId = transaction_id;
 n->CreatedTime = n->LastCommTime = v->Now;
 n->DisconnectNow = 0;

 n->DnsGetIpFromHost = 0;
 n->DnsTargetHostName = CopyStr(dns_target_host_name);

 Add(v->NatTable, n);


 {
  IP ip1, ip2;
  char s1[MAX_SIZE], s2[MAX_SIZE];
  UINTToIP(&ip1, src_ip);
  UINTToIP(&ip2, dest_ip);
  IPToStr(s1, 0, &ip1);
  IPToStr(s2, 0, &ip2);
  Debug("NAT_ENTRY: CreateNatDns %s %u -> %s %u\n", s1, src_port, s2, dest_port);
 }



 return n;
}

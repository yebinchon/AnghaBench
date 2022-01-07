
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int NatTable; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {int DisconnectNow; scalar_t__ SrcIp; scalar_t__ Protocol; scalar_t__ TcpStatus; scalar_t__ LastCommTime; } ;
typedef TYPE_2__ NAT_ENTRY ;


 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 scalar_t__ NAT_TCP ;
 scalar_t__ NAT_TCP_CONNECTING ;

NAT_ENTRY *GetOldestNatEntryOfIp(VH *v, UINT ip, UINT protocol)
{
 UINT i;
 NAT_ENTRY *oldest = ((void*)0);
 UINT64 oldest_tick = 0xFFFFFFFFFFFFFFFFULL;

 if (v == ((void*)0))
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(v->NatTable);i++)
 {
  NAT_ENTRY *e = LIST_DATA(v->NatTable, i);

  if (e->DisconnectNow == 0)
  {
   if (e->SrcIp == ip)
   {
    if (e->Protocol == protocol)
    {
     if (protocol != NAT_TCP || e->TcpStatus != NAT_TCP_CONNECTING)
     {
      if (e->LastCommTime <= oldest_tick)
      {
       oldest_tick = e->LastCommTime;
       oldest = e;
      }
     }
    }
   }
  }
 }

 return oldest;
}

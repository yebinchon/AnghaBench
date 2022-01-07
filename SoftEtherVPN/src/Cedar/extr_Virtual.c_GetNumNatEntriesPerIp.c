
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int NatTable; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {int DisconnectNow; scalar_t__ SrcIp; scalar_t__ Protocol; scalar_t__ TcpStatus; } ;
typedef TYPE_2__ NAT_ENTRY ;


 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 scalar_t__ NAT_TCP ;
 scalar_t__ NAT_TCP_CONNECTING ;

UINT GetNumNatEntriesPerIp(VH *v, UINT ip, UINT protocol, bool tcp_syn_sent)
{
 UINT ret = 0;
 UINT i;

 if (v == ((void*)0))
 {
  return 0;
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
     bool ok = 0;

     if (protocol == NAT_TCP)
     {
      if (tcp_syn_sent)
      {
       if (e->TcpStatus == NAT_TCP_CONNECTING)
       {
        ok = 1;
       }
      }
      else
      {
       if (e->TcpStatus != NAT_TCP_CONNECTING)
       {
        ok = 1;
       }
      }
     }
     else
     {
      ok = 1;
     }

     if (ok)
     {
      ret++;
     }
    }
   }
  }
 }

 return ret;
}

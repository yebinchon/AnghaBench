
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {int TunnelList; } ;
struct TYPE_5__ {int ClientIp; } ;
typedef TYPE_1__ L2TP_TUNNEL ;
typedef TYPE_2__ L2TP_SERVER ;
typedef int IP ;


 scalar_t__ CmpIpAddr (int *,int *) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

UINT GetNumL2TPTunnelsByClientIP(L2TP_SERVER *l2tp, IP *client_ip)
{
 UINT i, ret;

 if (l2tp == ((void*)0) || client_ip == ((void*)0))
 {
  return 0;
 }

 ret = 0;

 for (i = 0;i < LIST_NUM(l2tp->TunnelList);i++)
 {
  L2TP_TUNNEL *t = LIST_DATA(l2tp->TunnelList, i);

  if (CmpIpAddr(&t->ClientIp, client_ip) == 0)
  {
   ret++;
  }
 }

 return ret;
}

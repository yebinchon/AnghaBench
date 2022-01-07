
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int TunnelList; } ;
struct TYPE_6__ {scalar_t__ TunnelId1; int ClientIp; } ;
typedef TYPE_1__ L2TP_TUNNEL ;
typedef TYPE_2__ L2TP_SERVER ;
typedef int IP ;


 scalar_t__ CmpIpAddr (int *,int *) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

L2TP_TUNNEL *GetTunnelFromIdOfAssignedByClient(L2TP_SERVER *l2tp, IP *client_ip, UINT tunnel_id)
{
 UINT i;

 if (l2tp == ((void*)0) || client_ip == 0 || tunnel_id == 0)
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(l2tp->TunnelList);i++)
 {
  L2TP_TUNNEL *t = LIST_DATA(l2tp->TunnelList, i);

  if (t->TunnelId1 == tunnel_id && CmpIpAddr(&t->ClientIp, client_ip) == 0)
  {
   return t;
  }
 }

 return ((void*)0);
}

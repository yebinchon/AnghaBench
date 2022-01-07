
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int TunnelList; } ;
struct TYPE_6__ {scalar_t__ TunnelId2; int IsV3; int ClientIp; } ;
typedef TYPE_1__ L2TP_TUNNEL ;
typedef TYPE_2__ L2TP_SERVER ;
typedef int IP ;


 scalar_t__ CmpIpAddr (int *,int *) ;
 scalar_t__ EQUAL_BOOL (int ,int) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

L2TP_TUNNEL *GetTunnelFromId(L2TP_SERVER *l2tp, IP *client_ip, UINT tunnel_id, bool is_v3)
{
 UINT i;

 if (l2tp == ((void*)0) || client_ip == 0 || tunnel_id == 0)
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(l2tp->TunnelList);i++)
 {
  L2TP_TUNNEL *t = LIST_DATA(l2tp->TunnelList, i);

  if (t->TunnelId2 == tunnel_id && CmpIpAddr(&t->ClientIp, client_ip) == 0)
  {
   if (EQUAL_BOOL(t->IsV3, is_v3))
   {
    return t;
   }
  }
 }

 return ((void*)0);
}

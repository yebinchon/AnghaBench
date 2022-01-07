
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {int SessionList; } ;
struct TYPE_5__ {int ClientIp; } ;
typedef TYPE_1__ OPENVPN_SESSION ;
typedef TYPE_2__ OPENVPN_SERVER ;
typedef int IP ;


 scalar_t__ CmpIpAddr (int *,int *) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

UINT OvsGetNumSessionByClientIp(OPENVPN_SERVER *s, IP *ip)
{
 UINT i;
 UINT ret = 0;

 if (s == ((void*)0) || ip == ((void*)0))
 {
  return 0;
 }

 for (i = 0;i < LIST_NUM(s->SessionList);i++)
 {
  OPENVPN_SESSION *se = LIST_DATA(s->SessionList, i);

  if (CmpIpAddr(&se->ClientIp, ip) == 0)
  {
   ret++;
  }
 }

 return ret;
}

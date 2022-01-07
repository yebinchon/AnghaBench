
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_11__ {int IpAddress; int SubnetMask; } ;
struct TYPE_10__ {int IfList; } ;
struct TYPE_9__ {int GatewayAddress; } ;
typedef TYPE_1__ L3TABLE ;
typedef TYPE_2__ L3SW ;
typedef TYPE_3__ L3IF ;


 TYPE_1__* L3GetBestRoute (TYPE_2__*,int) ;
 TYPE_3__* LIST_DATA (int ,int) ;
 int LIST_NUM (int ) ;

L3IF *L3GetNextIf(L3SW *s, UINT ip, UINT *next_hop)
{
 UINT i;
 L3IF *f;
 UINT next_hop_ip = 0;

 if (s == ((void*)0) || ip == 0 || ip == 0xffffffff)
 {
  return ((void*)0);
 }

 f = ((void*)0);



 for (i = 0;i < LIST_NUM(s->IfList);i++)
 {
  L3IF *ff = LIST_DATA(s->IfList, i);

  if ((ff->IpAddress & ff->SubnetMask) == (ip & ff->SubnetMask))
  {
   f = ff;
   next_hop_ip = ip;
   break;
  }
 }

 if (f == ((void*)0))
 {

  L3TABLE *t = L3GetBestRoute(s, ip);

  if (t == ((void*)0))
  {

   return ((void*)0);
  }
  else
  {


   for (i = 0;i < LIST_NUM(s->IfList);i++)
   {
    L3IF *ff = LIST_DATA(s->IfList, i);

    if ((ff->IpAddress & ff->SubnetMask) == (t->GatewayAddress & ff->SubnetMask))
    {
     f = ff;
     next_hop_ip = t->GatewayAddress;
     break;
    }
   }
  }
 }

 if (f == ((void*)0))
 {

  return ((void*)0);
 }

 if (next_hop != ((void*)0))
 {
  *next_hop = next_hop_ip;
 }

 return f;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_13__ {int* addr; } ;
typedef int LIST ;
typedef TYPE_1__ IP ;


 int Copy (TYPE_1__*,TYPE_1__*,int) ;
 int FreeHostIPAddressList (int *) ;
 int * GetHostIPAddressList () ;
 scalar_t__ GetIPAddrType6 (TYPE_1__*) ;
 scalar_t__ IPV6_ADDR_GLOBAL_UNICAST ;
 scalar_t__ IPV6_ADDR_LOOPBACK ;
 scalar_t__ IPV6_ADDR_ZERO ;
 scalar_t__ IsIP4 (TYPE_1__*) ;
 scalar_t__ IsIP6 (TYPE_1__*) ;
 int IsIPPrivate (TYPE_1__*) ;
 int IsZeroIp (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int SetIP (TYPE_1__*,int,int ,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void GetCurrentGlobalIPGuess(IP *ip, bool ipv6)
{
 LIST *o;
 UINT i;

 if (ip == ((void*)0))
 {
  return;
 }

 Zero(ip, sizeof(IP));

 o = GetHostIPAddressList();

 if (ipv6 == 0)
 {

  for (i = 0;i < LIST_NUM(o);i++)
  {
   IP *p = LIST_DATA(o, i);

   if (IsIP4(p))
   {
    if (IsZeroIp(p) == 0 && IsIPPrivate(p) == 0 && p->addr[0] != 127)
    {
     Copy(ip, p, sizeof(IP));
    }
   }
  }

  if (IsZeroIp(ip))
  {
   for (i = 0;i < LIST_NUM(o);i++)
   {
    IP *p = LIST_DATA(o, i);

    if (IsIP4(p))
    {
     if (IsZeroIp(p) == 0 && IsIPPrivate(p) && p->addr[0] != 127)
     {
      Copy(ip, p, sizeof(IP));
     }
    }
   }
  }

  if (IsZeroIp(ip))
  {
   SetIP(ip, 127, 0, 0, 1);
  }
 }
 else
 {

  for (i = 0;i < LIST_NUM(o);i++)
  {
   IP *p = LIST_DATA(o, i);

   if (IsIP6(p))
   {
    UINT type = GetIPAddrType6(p);

    if ((type & IPV6_ADDR_GLOBAL_UNICAST) && ((type & IPV6_ADDR_ZERO) == 0) && ((type & IPV6_ADDR_LOOPBACK) == 0))
    {
     Copy(ip, p, sizeof(IP));
    }
   }
  }
 }

 FreeHostIPAddressList(o);
}

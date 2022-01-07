
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int* addr; } ;
typedef TYPE_1__ IP ;


 int IPToUINT (TYPE_1__*) ;
 scalar_t__ IsIP4 (TYPE_1__*) ;
 int IsOnPrivateIPFile (int ) ;
 int * g_private_ip_list ;

bool IsIPPrivate(IP *ip)
{

 if (ip == ((void*)0))
 {
  return 0;
 }

 if (ip->addr[0] == 10)
 {
  return 1;
 }

 if (ip->addr[0] == 172)
 {
  if (ip->addr[1] >= 16 && ip->addr[1] <= 31)
  {
   return 1;
  }
 }

 if (ip->addr[0] == 192 && ip->addr[1] == 168)
 {
  return 1;
 }

 if (ip->addr[0] == 169 && ip->addr[1] == 254)
 {
  return 1;
 }

 if (ip->addr[0] == 100)
 {
  if (ip->addr[1] >= 64 && ip->addr[1] <= 127)
  {
   return 1;
  }
 }

 if (g_private_ip_list != ((void*)0))
 {
  if (IsIP4(ip))
  {
   UINT ip4 = IPToUINT(ip);

   return IsOnPrivateIPFile(ip4);
  }
 }

 return 0;
}

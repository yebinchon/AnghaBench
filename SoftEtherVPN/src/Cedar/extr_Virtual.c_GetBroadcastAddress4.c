
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 int GetBroadcastAddress (int ,int ) ;
 int IPToUINT (int *) ;
 int IsIP4 (int *) ;
 int UINTToIP (int *,int ) ;
 int Zero (int *,int) ;

void GetBroadcastAddress4(IP *dst, IP *addr, IP *mask)
{

 if (dst == ((void*)0) || IsIP4(addr) == 0 || IsIP4(mask) == 0)
 {
  Zero(dst, sizeof(IP));
  return;
 }

 UINTToIP(dst, GetBroadcastAddress(IPToUINT(addr), IPToUINT(mask)));
}

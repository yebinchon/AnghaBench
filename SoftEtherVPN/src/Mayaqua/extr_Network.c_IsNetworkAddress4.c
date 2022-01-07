
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int IPToUINT (int *) ;
 int IsIP4 (int *) ;
 int IsSubnetMask4 (int *) ;

bool IsNetworkAddress4(IP *ip, IP *mask)
{
 UINT a, b;

 if (ip == ((void*)0) || mask == ((void*)0))
 {
  return 0;
 }

 if (IsIP4(ip) == 0 || IsIP4(mask) == 0)
 {
  return 0;
 }

 if (IsSubnetMask4(mask) == 0)
 {
  return 0;
 }

 a = IPToUINT(ip);
 b = IPToUINT(mask);

 if ((a & b) == a)
 {
  return 1;
 }

 return 0;
}

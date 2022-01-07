
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int IntToSubnetMask32 (int ) ;
 int UINTToIP (int *,int ) ;

void IntToSubnetMask4(IP *ip, UINT i)
{
 UINT m;

 if (ip == ((void*)0))
 {
  return;
 }

 m = IntToSubnetMask32(i);

 UINTToIP(ip, m);
}

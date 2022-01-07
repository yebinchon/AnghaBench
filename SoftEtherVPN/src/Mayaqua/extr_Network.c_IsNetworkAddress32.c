
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int IsNetworkAddress4 (int *,int *) ;
 int UINTToIP (int *,int ) ;

bool IsNetworkAddress32(UINT ip, UINT mask)
{
 IP a, b;

 UINTToIP(&a, ip);
 UINTToIP(&b, mask);

 return IsNetworkAddress4(&a, &b);
}

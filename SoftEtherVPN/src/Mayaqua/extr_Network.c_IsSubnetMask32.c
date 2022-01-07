
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int IsSubnetMask4 (int *) ;
 int UINTToIP (int *,int ) ;

bool IsSubnetMask32(UINT ip)
{
 IP p;

 UINTToIP(&p, ip);

 return IsSubnetMask4(&p);
}

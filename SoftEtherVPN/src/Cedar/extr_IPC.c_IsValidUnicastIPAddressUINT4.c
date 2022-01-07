
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int IsValidUnicastIPAddress4 (int *) ;
 int UINTToIP (int *,int ) ;

bool IsValidUnicastIPAddressUINT4(UINT ip)
{
 IP a;

 UINTToIP(&a, ip);

 return IsValidUnicastIPAddress4(&a);
}

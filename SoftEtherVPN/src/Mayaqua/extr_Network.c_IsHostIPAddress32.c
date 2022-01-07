
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int IsHostIPAddress4 (int *) ;
 int UINTToIP (int *,int ) ;

bool IsHostIPAddress32(UINT ip)
{
 IP p;

 UINTToIP(&p, ip);

 return IsHostIPAddress4(&p);
}

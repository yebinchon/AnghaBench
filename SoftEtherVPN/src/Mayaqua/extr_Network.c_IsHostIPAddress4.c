
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int IPToUINT (int *) ;

bool IsHostIPAddress4(IP *ip)
{
 UINT a;

 if (ip == ((void*)0))
 {
  return 0;
 }

 a = IPToUINT(ip);

 if (a == 0 || a == 0xffffffff)
 {
  return 0;
 }

 return 1;
}

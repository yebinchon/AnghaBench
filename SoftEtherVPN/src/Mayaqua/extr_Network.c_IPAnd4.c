
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int IPToUINT (int *) ;
 int IsIP4 (int *) ;
 int UINTToIP (int *,int) ;
 int Zero (int *,int) ;

void IPAnd4(IP *dst, IP *a, IP *b)
{
 UINT i;

 if (dst == ((void*)0) || a == ((void*)0) || b == ((void*)0) || IsIP4(a) == 0 || IsIP4(b) == 0)
 {
  Zero(dst, sizeof(IP));
  return;
 }

 i = IPToUINT(a) & IPToUINT(b);

 UINTToIP(dst, i);
}

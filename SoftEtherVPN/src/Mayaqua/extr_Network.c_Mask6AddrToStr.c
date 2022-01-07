
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IPV6_ADDR ;


 int Mask6AddrToStrEx (char*,int ,int *,int) ;

void Mask6AddrToStr(char *str, UINT size, IPV6_ADDR *mask)
{
 Mask6AddrToStrEx(str, size, mask, 0);
}

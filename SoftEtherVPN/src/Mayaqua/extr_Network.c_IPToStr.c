
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int IPToStr4 (char*,int ,int *) ;
 int IPToStr6 (char*,int ,int *) ;
 scalar_t__ IsIP6 (int *) ;

void IPToStr(char *str, UINT size, IP *ip)
{

 if (str == ((void*)0) || ip == ((void*)0))
 {
  return;
 }

 if (IsIP6(ip))
 {
  IPToStr6(str, size, ip);
 }
 else
 {
  IPToStr4(str, size, ip);
 }
}

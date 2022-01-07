
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 int StrToIP6 (int *,char*) ;

bool IsIpStr6(char *str)
{
 IP ip;

 if (str == ((void*)0))
 {
  return 0;
 }

 if (StrToIP6(&ip, str) == 0)
 {
  return 0;
 }

 return 1;
}

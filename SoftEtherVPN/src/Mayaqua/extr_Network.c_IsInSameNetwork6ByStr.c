
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 int IsInSameNetwork6 (int *,int *,int *) ;
 int StrToIP6 (int *,char*) ;
 int StrToMask6 (int *,char*) ;

bool IsInSameNetwork6ByStr(char *ip1, char *ip2, char *subnet)
{
 IP p1, p2, s;

 if (StrToIP6(&p1, ip1) == 0)
 {
  return 0;
 }

 if (StrToIP6(&p2, ip2) == 0)
 {
  return 0;
 }

 if (StrToMask6(&s, subnet) == 0)
 {
  return 0;
 }

 return IsInSameNetwork6(&p1, &p2, &s);
}

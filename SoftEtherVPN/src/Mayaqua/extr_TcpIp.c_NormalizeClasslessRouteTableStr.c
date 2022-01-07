
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
typedef int UINT ;
typedef int DHCP_CLASSLESS_ROUTE_TABLE ;


 int BuildClasslessRouteTableStr (char*,int ,int *) ;
 scalar_t__ ParseClasslessRouteTableStr (int *,char*) ;
 int Zero (int *,int) ;

bool NormalizeClasslessRouteTableStr(char *dst, UINT dst_size, char *src)
{
 DHCP_CLASSLESS_ROUTE_TABLE t;

 if (dst == ((void*)0) || src == ((void*)0))
 {
  return 0;
 }

 Zero(&t, sizeof(t));
 if (ParseClasslessRouteTableStr(&t, src))
 {
  BuildClasslessRouteTableStr(dst, dst_size, &t);

  return 1;
 }

 return 0;
}

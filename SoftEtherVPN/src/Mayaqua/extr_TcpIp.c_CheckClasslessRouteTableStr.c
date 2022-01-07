
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DHCP_CLASSLESS_ROUTE_TABLE ;


 int ParseClasslessRouteTableStr (int *,char*) ;

bool CheckClasslessRouteTableStr(char *str)
{
 DHCP_CLASSLESS_ROUTE_TABLE d;


 if (str == ((void*)0))
 {
  return 0;
 }

 return ParseClasslessRouteTableStr(&d, str);
}

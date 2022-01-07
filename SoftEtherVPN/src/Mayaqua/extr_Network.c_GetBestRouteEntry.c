
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ROUTE_ENTRY ;
typedef int IP ;


 int * GetBestRouteEntryEx (int *,int ) ;

ROUTE_ENTRY *GetBestRouteEntry(IP *ip)
{
 return GetBestRouteEntryEx(ip, 0);
}

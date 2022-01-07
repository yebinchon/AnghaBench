
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ROUTE_ENTRY ;


 int AddRouteEntryEx (int *,int*) ;

bool AddRouteEntry(ROUTE_ENTRY *e)
{
 bool dummy = 0;
 return AddRouteEntryEx(e, &dummy);
}

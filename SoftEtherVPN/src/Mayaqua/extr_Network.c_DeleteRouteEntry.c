
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ROUTE_ENTRY ;


 int Debug (char*) ;
 int UnixDeleteRouteEntry (int *) ;
 int Win32DeleteRouteEntry (int *) ;

void DeleteRouteEntry(ROUTE_ENTRY *e)
{
 Debug("DeleteRouteEntry();\n");



 UnixDeleteRouteEntry(e);

}

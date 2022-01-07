
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ROUTE_ENTRY ;


 int Debug (char*) ;
 int UnixAddRouteEntry (int *,int*) ;
 int Win32AddRouteEntry (int *,int*) ;

bool AddRouteEntryEx(ROUTE_ENTRY *e, bool *already_exists)
{
 bool ret = 0;
 Debug("AddRouteEntryEx();\n");



 ret = UnixAddRouteEntry(e, already_exists);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int ROUTE_TABLE ;
typedef int ROUTE_ENTRY ;
typedef int IP ;


 int FreeRouteTable (int *) ;
 int * GetBestRouteEntryFromRouteTableEx (int *,int *,int ) ;
 int * GetRouteTable () ;

ROUTE_ENTRY *GetBestRouteEntryEx(IP *ip, UINT exclude_if_id)
{
 ROUTE_TABLE *table;
 ROUTE_ENTRY *e = ((void*)0);

 if (ip == ((void*)0))
 {
  return ((void*)0);
 }

 table = GetRouteTable();
 if (table == ((void*)0))
 {
  return ((void*)0);
 }

 e = GetBestRouteEntryFromRouteTableEx(table, ip, exclude_if_id);
 FreeRouteTable(table);

 return e;
}

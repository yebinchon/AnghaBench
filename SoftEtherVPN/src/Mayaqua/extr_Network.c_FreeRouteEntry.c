
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ROUTE_ENTRY ;


 int Free (int *) ;

void FreeRouteEntry(ROUTE_ENTRY *e)
{

 if (e == ((void*)0))
 {
  return;
 }

 Free(e);
}

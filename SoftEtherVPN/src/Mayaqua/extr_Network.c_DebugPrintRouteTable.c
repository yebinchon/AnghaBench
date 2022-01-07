
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {size_t NumEntry; int * Entry; } ;
typedef TYPE_1__ ROUTE_TABLE ;


 int Debug (char*,...) ;
 int DebugPrintRoute (int ) ;
 int IsDebug () ;

void DebugPrintRouteTable(ROUTE_TABLE *r)
{
 UINT i;

 if (r == ((void*)0))
 {
  return;
 }

 if (IsDebug() == 0)
 {
  return;
 }

 Debug("---- Routing Table (%u Entries) ----\n", r->NumEntry);

 for (i = 0;i < r->NumEntry;i++)
 {
  Debug("   ");

  DebugPrintRoute(r->Entry[i]);
 }

 Debug("------------------------------------\n");
}

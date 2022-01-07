
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {int sortKey; int numDisplayServers; int * displayServers; } ;
struct TYPE_4__ {TYPE_1__ serverStatus; } ;


 int UI_ServersQsortCompare ;
 int qsort (int *,int ,int,int ) ;
 TYPE_2__ uiInfo ;

void UI_ServersSort(int column, qboolean force) {

 if ( !force ) {
  if ( uiInfo.serverStatus.sortKey == column ) {
   return;
  }
 }

 uiInfo.serverStatus.sortKey = column;
 qsort( &uiInfo.serverStatus.displayServers[0], uiInfo.serverStatus.numDisplayServers, sizeof(int), UI_ServersQsortCompare);
}

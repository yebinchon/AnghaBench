
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numDisplayServers; int * displayServers; int sortDir; int sortKey; } ;
struct TYPE_6__ {TYPE_1__ serverStatus; } ;
struct TYPE_5__ {int integer; } ;


 int UI_InsertServerIntoDisplayList (int,int) ;
 int trap_LAN_CompareServers (int ,int ,int ,int,int ) ;
 TYPE_3__ uiInfo ;
 TYPE_2__ ui_netSource ;

__attribute__((used)) static void UI_BinaryServerInsertion(int num) {
 int mid, offset, res, len;


 len = uiInfo.serverStatus.numDisplayServers;
 mid = len;
 offset = 0;
 res = 0;
 while(mid > 0) {
  mid = len >> 1;

  res = trap_LAN_CompareServers( ui_netSource.integer, uiInfo.serverStatus.sortKey,
     uiInfo.serverStatus.sortDir, num, uiInfo.serverStatus.displayServers[offset+mid]);

  if (res == 0) {
   UI_InsertServerIntoDisplayList(num, offset+mid);
   return;
  }

  else if (res == 1) {
   offset += mid;
   len -= mid;
  }

  else {
   len -= mid;
  }
 }
 if (res == 1) {
  offset++;
 }
 UI_InsertServerIntoDisplayList(num, offset);
}

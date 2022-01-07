
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numDisplayServers; int* displayServers; } ;
struct TYPE_4__ {TYPE_1__ serverStatus; } ;


 TYPE_2__ uiInfo ;

__attribute__((used)) static void UI_InsertServerIntoDisplayList(int num, int position) {
 int i;

 if (position < 0 || position > uiInfo.serverStatus.numDisplayServers ) {
  return;
 }

 uiInfo.serverStatus.numDisplayServers++;
 for (i = uiInfo.serverStatus.numDisplayServers; i > position; i--) {
  uiInfo.serverStatus.displayServers[i] = uiInfo.serverStatus.displayServers[i-1];
 }
 uiInfo.serverStatus.displayServers[position] = num;
}

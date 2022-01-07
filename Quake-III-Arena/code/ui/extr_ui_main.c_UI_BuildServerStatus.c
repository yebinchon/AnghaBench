
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_8__ {scalar_t__ numLines; } ;
struct TYPE_6__ {scalar_t__ realTime; } ;
struct TYPE_5__ {scalar_t__ currentServer; scalar_t__ numDisplayServers; } ;
struct TYPE_7__ {scalar_t__ nextServerStatusRefresh; TYPE_2__ uiDC; int serverStatusAddress; TYPE_4__ serverStatusInfo; TYPE_1__ serverStatus; scalar_t__ nextFindPlayerRefresh; } ;


 int FEEDER_SERVERSTATUS ;
 int Menu_SetFeederSelection (int *,int ,int ,int *) ;
 scalar_t__ UI_GetServerStatusInfo (int ,TYPE_4__*) ;
 int trap_LAN_ServerStatus (int *,int *,int ) ;
 TYPE_3__ uiInfo ;

__attribute__((used)) static void UI_BuildServerStatus(qboolean force) {

 if (uiInfo.nextFindPlayerRefresh) {
  return;
 }
 if (!force) {
  if (!uiInfo.nextServerStatusRefresh || uiInfo.nextServerStatusRefresh > uiInfo.uiDC.realTime) {
   return;
  }
 }
 else {
  Menu_SetFeederSelection(((void*)0), FEEDER_SERVERSTATUS, 0, ((void*)0));
  uiInfo.serverStatusInfo.numLines = 0;

  trap_LAN_ServerStatus( ((void*)0), ((void*)0), 0);
 }
 if (uiInfo.serverStatus.currentServer < 0 || uiInfo.serverStatus.currentServer > uiInfo.serverStatus.numDisplayServers || uiInfo.serverStatus.numDisplayServers == 0) {
  return;
 }
 if (UI_GetServerStatusInfo( uiInfo.serverStatusAddress, &uiInfo.serverStatusInfo ) ) {
  uiInfo.nextServerStatusRefresh = 0;
  UI_GetServerStatusInfo( uiInfo.serverStatusAddress, ((void*)0) );
 }
 else {
  uiInfo.nextServerStatusRefresh = uiInfo.uiDC.realTime + 500;
 }
}

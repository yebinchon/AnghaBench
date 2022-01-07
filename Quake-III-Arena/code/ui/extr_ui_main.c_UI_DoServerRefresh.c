
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_5__ {scalar_t__ realTime; } ;
struct TYPE_6__ {scalar_t__ refreshtime; int refreshActive; } ;
struct TYPE_8__ {TYPE_1__ uiDC; TYPE_2__ serverStatus; } ;
struct TYPE_7__ {scalar_t__ integer; } ;


 scalar_t__ AS_FAVORITES ;
 scalar_t__ AS_LOCAL ;
 int UI_BuildServerDisplayList (int) ;
 int UI_StopServerRefresh () ;
 int qfalse ;
 int qtrue ;
 scalar_t__ trap_LAN_GetServerCount (scalar_t__) ;
 scalar_t__ trap_LAN_UpdateVisiblePings (scalar_t__) ;
 TYPE_4__ uiInfo ;
 TYPE_3__ ui_netSource ;

__attribute__((used)) static void UI_DoServerRefresh( void )
{
 qboolean wait = qfalse;

 if (!uiInfo.serverStatus.refreshActive) {
  return;
 }
 if (ui_netSource.integer != AS_FAVORITES) {
  if (ui_netSource.integer == AS_LOCAL) {
   if (!trap_LAN_GetServerCount(ui_netSource.integer)) {
    wait = qtrue;
   }
  } else {
   if (trap_LAN_GetServerCount(ui_netSource.integer) < 0) {
    wait = qtrue;
   }
  }
 }

 if (uiInfo.uiDC.realTime < uiInfo.serverStatus.refreshtime) {
  if (wait) {
   return;
  }
 }


 if (trap_LAN_UpdateVisiblePings(ui_netSource.integer)) {
  uiInfo.serverStatus.refreshtime = uiInfo.uiDC.realTime + 1000;
 } else if (!wait) {

  UI_BuildServerDisplayList(2);

  UI_StopServerRefresh();
 }

 UI_BuildServerDisplayList(qfalse);
}

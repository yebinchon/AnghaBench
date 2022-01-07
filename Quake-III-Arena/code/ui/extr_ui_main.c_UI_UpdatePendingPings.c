
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ realTime; } ;
struct TYPE_5__ {scalar_t__ refreshtime; int refreshActive; } ;
struct TYPE_8__ {TYPE_2__ uiDC; TYPE_1__ serverStatus; } ;
struct TYPE_7__ {int integer; } ;


 int qtrue ;
 int trap_LAN_ResetPings (int ) ;
 TYPE_4__ uiInfo ;
 TYPE_3__ ui_netSource ;

__attribute__((used)) static void UI_UpdatePendingPings() {
 trap_LAN_ResetPings(ui_netSource.integer);
 uiInfo.serverStatus.refreshActive = qtrue;
 uiInfo.serverStatus.refreshtime = uiInfo.uiDC.realTime + 1000;

}

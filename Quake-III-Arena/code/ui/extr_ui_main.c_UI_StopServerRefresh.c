
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numDisplayServers; int numPlayersOnServers; scalar_t__ refreshActive; } ;
struct TYPE_6__ {TYPE_1__ serverStatus; } ;
struct TYPE_5__ {int integer; } ;


 int Com_Printf (char*,int,int) ;
 scalar_t__ qfalse ;
 scalar_t__ trap_Cvar_VariableValue (char*) ;
 int trap_LAN_GetServerCount (int ) ;
 TYPE_3__ uiInfo ;
 TYPE_2__ ui_netSource ;

__attribute__((used)) static void UI_StopServerRefresh( void )
{
 int count;

 if (!uiInfo.serverStatus.refreshActive) {

  return;
 }
 uiInfo.serverStatus.refreshActive = qfalse;
 Com_Printf("%d servers listed in browser with %d players.\n",
     uiInfo.serverStatus.numDisplayServers,
     uiInfo.serverStatus.numPlayersOnServers);
 count = trap_LAN_GetServerCount(ui_netSource.integer);
 if (count - uiInfo.serverStatus.numDisplayServers > 0) {
  Com_Printf("%d servers not listed due to packet loss or pings higher than %d\n",
      count - uiInfo.serverStatus.numDisplayServers,
      (int) trap_Cvar_VariableValue("cl_maxPing"));
 }

}

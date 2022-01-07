
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int numLines; char*** lines; } ;
typedef TYPE_4__ serverStatusInfo_t ;
typedef int qboolean ;
typedef int name ;
typedef int infoString ;
struct TYPE_17__ {size_t num; TYPE_1__* server; } ;
struct TYPE_11__ {int realTime; } ;
struct TYPE_12__ {size_t numDisplayServers; int * displayServers; } ;
struct TYPE_16__ {int nextFindPlayerRefresh; int numFoundPlayerServers; char* findPlayerName; char** foundPlayerServerNames; char** foundPlayerServerAddresses; scalar_t__ currentFoundPlayerServer; TYPE_2__ uiDC; TYPE_8__ pendingServerStatus; TYPE_3__ serverStatus; } ;
struct TYPE_15__ {int integer; } ;
struct TYPE_14__ {int integer; } ;
struct TYPE_10__ {char* adrstr; char* name; int startTime; void* valid; } ;


 int Com_sprintf (char*,int,char*,...) ;
 int FEEDER_FINDPLAYER ;
 char* Info_ValueForKey (char*,char*) ;
 int MAX_FOUNDPLAYER_SERVERS ;
 int MAX_NAME_LENGTH ;
 int MAX_SERVERSTATUSREQUESTS ;
 int MAX_STRING_CHARS ;
 int Q_CleanStr (char*) ;
 int Q_strncpyz (char*,char*,int) ;
 int UI_FeederSelection (int ,scalar_t__) ;
 scalar_t__ UI_GetServerStatusInfo (char*,TYPE_4__*) ;
 int memset (TYPE_8__*,int ,int) ;
 void* qfalse ;
 void* qtrue ;
 scalar_t__ stristr (char*,char*) ;
 int strlen (char*) ;
 int trap_Cvar_Set (char*,int ) ;
 int trap_Cvar_VariableStringBuffer (char*,char*,int) ;
 int trap_LAN_GetServerAddressString (int ,int ,char*,int) ;
 int trap_LAN_GetServerInfo (int ,int ,char*,int) ;
 int trap_LAN_ServerStatus (int *,int *,int ) ;
 TYPE_7__ uiInfo ;
 TYPE_6__ ui_netSource ;
 TYPE_5__ ui_serverStatusTimeOut ;
 int va (char*,int) ;

__attribute__((used)) static void UI_BuildFindPlayerList(qboolean force) {
 static int numFound, numTimeOuts;
 int i, j, resend;
 serverStatusInfo_t info;
 char name[MAX_NAME_LENGTH+2];
 char infoString[MAX_STRING_CHARS];

 if (!force) {
  if (!uiInfo.nextFindPlayerRefresh || uiInfo.nextFindPlayerRefresh > uiInfo.uiDC.realTime) {
   return;
  }
 }
 else {
  memset(&uiInfo.pendingServerStatus, 0, sizeof(uiInfo.pendingServerStatus));
  uiInfo.numFoundPlayerServers = 0;
  uiInfo.currentFoundPlayerServer = 0;
  trap_Cvar_VariableStringBuffer( "ui_findPlayer", uiInfo.findPlayerName, sizeof(uiInfo.findPlayerName));
  Q_CleanStr(uiInfo.findPlayerName);

  if (!strlen(uiInfo.findPlayerName)) {
   uiInfo.nextFindPlayerRefresh = 0;
   return;
  }

  resend = ui_serverStatusTimeOut.integer / 2 - 10;
  if (resend < 50) {
   resend = 50;
  }
  trap_Cvar_Set("cl_serverStatusResendTime", va("%d", resend));

  trap_LAN_ServerStatus( ((void*)0), ((void*)0), 0);

  uiInfo.numFoundPlayerServers = 1;
  Com_sprintf(uiInfo.foundPlayerServerNames[uiInfo.numFoundPlayerServers-1],
      sizeof(uiInfo.foundPlayerServerNames[uiInfo.numFoundPlayerServers-1]),
       "searching %d...", uiInfo.pendingServerStatus.num);
  numFound = 0;
  numTimeOuts++;
 }
 for (i = 0; i < MAX_SERVERSTATUSREQUESTS; i++) {

  if (uiInfo.pendingServerStatus.server[i].valid) {

   if (UI_GetServerStatusInfo( uiInfo.pendingServerStatus.server[i].adrstr, &info ) ) {

    numFound++;

    for (j = 0; j < info.numLines; j++) {

     if ( !info.lines[j][2] || !info.lines[j][2][0] ) {
      continue;
     }

     Q_strncpyz(name, info.lines[j][3], sizeof(name));
     Q_CleanStr(name);

     if (stristr(name, uiInfo.findPlayerName)) {

      if (uiInfo.numFoundPlayerServers < MAX_FOUNDPLAYER_SERVERS-1) {

       Q_strncpyz(uiInfo.foundPlayerServerAddresses[uiInfo.numFoundPlayerServers-1],
          uiInfo.pendingServerStatus.server[i].adrstr,
           sizeof(uiInfo.foundPlayerServerAddresses[0]));
       Q_strncpyz(uiInfo.foundPlayerServerNames[uiInfo.numFoundPlayerServers-1],
          uiInfo.pendingServerStatus.server[i].name,
           sizeof(uiInfo.foundPlayerServerNames[0]));
       uiInfo.numFoundPlayerServers++;
      }
      else {

       uiInfo.pendingServerStatus.num = uiInfo.serverStatus.numDisplayServers;
      }
     }
    }
    Com_sprintf(uiInfo.foundPlayerServerNames[uiInfo.numFoundPlayerServers-1],
        sizeof(uiInfo.foundPlayerServerNames[uiInfo.numFoundPlayerServers-1]),
         "searching %d/%d...", uiInfo.pendingServerStatus.num, numFound);

    uiInfo.pendingServerStatus.server[i].valid = qfalse;
   }
  }

  if (!uiInfo.pendingServerStatus.server[i].valid ||
   uiInfo.pendingServerStatus.server[i].startTime < uiInfo.uiDC.realTime - ui_serverStatusTimeOut.integer) {
   if (uiInfo.pendingServerStatus.server[i].valid) {
    numTimeOuts++;
   }

   UI_GetServerStatusInfo( uiInfo.pendingServerStatus.server[i].adrstr, ((void*)0) );

   uiInfo.pendingServerStatus.server[i].valid = qfalse;

   if (uiInfo.pendingServerStatus.num < uiInfo.serverStatus.numDisplayServers) {
    uiInfo.pendingServerStatus.server[i].startTime = uiInfo.uiDC.realTime;
    trap_LAN_GetServerAddressString(ui_netSource.integer, uiInfo.serverStatus.displayServers[uiInfo.pendingServerStatus.num],
       uiInfo.pendingServerStatus.server[i].adrstr, sizeof(uiInfo.pendingServerStatus.server[i].adrstr));
    trap_LAN_GetServerInfo(ui_netSource.integer, uiInfo.serverStatus.displayServers[uiInfo.pendingServerStatus.num], infoString, sizeof(infoString));
    Q_strncpyz(uiInfo.pendingServerStatus.server[i].name, Info_ValueForKey(infoString, "hostname"), sizeof(uiInfo.pendingServerStatus.server[0].name));
    uiInfo.pendingServerStatus.server[i].valid = qtrue;
    uiInfo.pendingServerStatus.num++;
    Com_sprintf(uiInfo.foundPlayerServerNames[uiInfo.numFoundPlayerServers-1],
        sizeof(uiInfo.foundPlayerServerNames[uiInfo.numFoundPlayerServers-1]),
         "searching %d/%d...", uiInfo.pendingServerStatus.num, numFound);
   }
  }
 }
 for (i = 0; i < MAX_SERVERSTATUSREQUESTS; i++) {
  if (uiInfo.pendingServerStatus.server[i].valid) {
   break;
  }
 }

 if (i < MAX_SERVERSTATUSREQUESTS) {
  uiInfo.nextFindPlayerRefresh = uiInfo.uiDC.realTime + 25;
 }
 else {

  if (!uiInfo.numFoundPlayerServers) {
   Com_sprintf(uiInfo.foundPlayerServerNames[uiInfo.numFoundPlayerServers-1], sizeof(uiInfo.foundPlayerServerAddresses[0]), "no servers found");
  }
  else {
   Com_sprintf(uiInfo.foundPlayerServerNames[uiInfo.numFoundPlayerServers-1], sizeof(uiInfo.foundPlayerServerAddresses[0]),
      "%d server%s found with player %s", uiInfo.numFoundPlayerServers-1,
      uiInfo.numFoundPlayerServers == 2 ? "":"s", uiInfo.findPlayerName);
  }
  uiInfo.nextFindPlayerRefresh = 0;

  UI_FeederSelection(FEEDER_FINDPLAYER, uiInfo.currentFoundPlayerServer);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_2__ {scalar_t__ integer; } ;


 int Cmd_AddCommand (char*,int ) ;
 int SV_BanNum_f ;
 int SV_Ban_f ;
 int SV_ConSay_f ;
 int SV_DumpUser_f ;
 int SV_Heartbeat_f ;
 int SV_KickNum_f ;
 int SV_Kick_f ;
 int SV_KillServer_f ;
 int SV_MapRestart_f ;
 int SV_Map_f ;
 int SV_SectorList_f ;
 int SV_Serverinfo_f ;
 int SV_Status_f ;
 int SV_Systeminfo_f ;
 TYPE_1__* com_dedicated ;
 scalar_t__ qtrue ;

void SV_AddOperatorCommands( void ) {
 static qboolean initialized;

 if ( initialized ) {
  return;
 }
 initialized = qtrue;

 Cmd_AddCommand ("heartbeat", SV_Heartbeat_f);
 Cmd_AddCommand ("kick", SV_Kick_f);
 Cmd_AddCommand ("banUser", SV_Ban_f);
 Cmd_AddCommand ("banClient", SV_BanNum_f);
 Cmd_AddCommand ("clientkick", SV_KickNum_f);
 Cmd_AddCommand ("status", SV_Status_f);
 Cmd_AddCommand ("serverinfo", SV_Serverinfo_f);
 Cmd_AddCommand ("systeminfo", SV_Systeminfo_f);
 Cmd_AddCommand ("dumpuser", SV_DumpUser_f);
 Cmd_AddCommand ("map_restart", SV_MapRestart_f);
 Cmd_AddCommand ("sectorlist", SV_SectorList_f);
 Cmd_AddCommand ("map", SV_Map_f);

 Cmd_AddCommand ("devmap", SV_Map_f);
 Cmd_AddCommand ("spmap", SV_Map_f);
 Cmd_AddCommand ("spdevmap", SV_Map_f);

 Cmd_AddCommand ("killserver", SV_KillServer_f);
 if( com_dedicated->integer ) {
  Cmd_AddCommand ("say", SV_ConSay_f);
 }
}

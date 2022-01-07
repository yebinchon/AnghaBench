
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {char* stringData; int* stringOffsets; } ;
struct TYPE_6__ {scalar_t__ serverId; TYPE_1__ gameState; } ;
struct TYPE_5__ {scalar_t__ demoplaying; } ;


 int BIG_INFO_KEY ;
 int BIG_INFO_VALUE ;
 size_t CS_SYSTEMINFO ;
 int Cvar_Set (char*,char*) ;
 int Cvar_SetCheatState () ;
 scalar_t__* Cvar_VariableString (char*) ;
 int Cvar_VariableValue (char*) ;
 int FS_PureServerSetLoadedPaks (char const*,char const*) ;
 int FS_PureServerSetReferencedPaks (char const*,char const*) ;
 int Info_NextPair (char const**,char*,char*) ;
 char const* Info_ValueForKey (char*,char*) ;
 int Q_stricmp (char*,char*) ;
 scalar_t__ atoi (char const*) ;
 TYPE_3__ cl ;
 int cl_connectedToPureServer ;
 TYPE_2__ clc ;
 int qfalse ;
 int qtrue ;

void CL_SystemInfoChanged( void ) {
 char *systemInfo;
 const char *s, *t;
 char key[BIG_INFO_KEY];
 char value[BIG_INFO_VALUE];
 qboolean gameSet;

 systemInfo = cl.gameState.stringData + cl.gameState.stringOffsets[ CS_SYSTEMINFO ];




 cl.serverId = atoi( Info_ValueForKey( systemInfo, "sv_serverid" ) );


 if ( clc.demoplaying ) {
  return;
 }

 s = Info_ValueForKey( systemInfo, "sv_cheats" );
 if ( atoi(s) == 0 ) {
  Cvar_SetCheatState();
 }


 s = Info_ValueForKey( systemInfo, "sv_paks" );
 t = Info_ValueForKey( systemInfo, "sv_pakNames" );
 FS_PureServerSetLoadedPaks( s, t );

 s = Info_ValueForKey( systemInfo, "sv_referencedPaks" );
 t = Info_ValueForKey( systemInfo, "sv_referencedPakNames" );
 FS_PureServerSetReferencedPaks( s, t );

 gameSet = qfalse;

 s = systemInfo;
 while ( s ) {
  Info_NextPair( &s, key, value );
  if ( !key[0] ) {
   break;
  }

  if ( !Q_stricmp( key, "fs_game" ) ) {
   gameSet = qtrue;
  }

  Cvar_Set( key, value );
 }

 if ( !gameSet && *Cvar_VariableString("fs_game") ) {
  Cvar_Set( "fs_game", "" );
 }
 cl_connectedToPureServer = Cvar_VariableValue( "sv_pure" );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int qboolean ;
typedef int newInfo ;
typedef int modelStr ;
struct TYPE_11__ {char const* name; char const* redTeam; char const* blueTeam; char const* modelName; char const* skinName; char const* headModelName; char const* headSkinName; int infoValid; int deferred; void* teamLeader; void* teamTask; void* team; void* losses; void* wins; void* handicap; void* botSkill; int color2; int color1; } ;
typedef TYPE_1__ clientInfo_t ;
struct TYPE_16__ {int loading; } ;
struct TYPE_15__ {int integer; } ;
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_13__ {scalar_t__ integer; } ;
struct TYPE_12__ {scalar_t__ gametype; TYPE_1__* clientinfo; } ;


 int CG_ColorFromString (char const*,int ) ;
 char* CG_ConfigString (scalar_t__) ;
 int CG_LoadClientInfo (TYPE_1__*) ;
 int CG_Printf (char*) ;
 int CG_ScanForExistingClientInfo (TYPE_1__*) ;
 int CG_SetDeferredClientInfo (TYPE_1__*) ;
 scalar_t__ CS_PLAYERS ;
 char* DEFAULT_TEAM_MODEL ;
 scalar_t__ GT_TEAM ;
 char* Info_ValueForKey (char const*,char*) ;
 int MAX_QPATH ;
 int MAX_TEAMNAME ;
 int Q_strncpyz (char const*,char const*,int) ;
 void* atoi (char const*) ;
 TYPE_7__ cg ;
 TYPE_6__ cg_buildScript ;
 TYPE_5__ cg_deferPlayers ;
 TYPE_4__ cg_forceModel ;
 TYPE_3__ cgs ;
 int memset (TYPE_1__*,int ,int) ;
 int qfalse ;
 int qtrue ;
 char* strchr (char const*,char) ;
 int trap_Cvar_VariableStringBuffer (char*,char*,int) ;
 int trap_MemoryRemaining () ;

void CG_NewClientInfo( int clientNum ) {
 clientInfo_t *ci;
 clientInfo_t newInfo;
 const char *configstring;
 const char *v;
 char *slash;

 ci = &cgs.clientinfo[clientNum];

 configstring = CG_ConfigString( clientNum + CS_PLAYERS );
 if ( !configstring[0] ) {
  memset( ci, 0, sizeof( *ci ) );
  return;
 }



 memset( &newInfo, 0, sizeof( newInfo ) );


 v = Info_ValueForKey(configstring, "n");
 Q_strncpyz( newInfo.name, v, sizeof( newInfo.name ) );


 v = Info_ValueForKey( configstring, "c1" );
 CG_ColorFromString( v, newInfo.color1 );

 v = Info_ValueForKey( configstring, "c2" );
 CG_ColorFromString( v, newInfo.color2 );


 v = Info_ValueForKey( configstring, "skill" );
 newInfo.botSkill = atoi( v );


 v = Info_ValueForKey( configstring, "hc" );
 newInfo.handicap = atoi( v );


 v = Info_ValueForKey( configstring, "w" );
 newInfo.wins = atoi( v );


 v = Info_ValueForKey( configstring, "l" );
 newInfo.losses = atoi( v );


 v = Info_ValueForKey( configstring, "t" );
 newInfo.team = atoi( v );


 v = Info_ValueForKey( configstring, "tt" );
 newInfo.teamTask = atoi(v);


 v = Info_ValueForKey( configstring, "tl" );
 newInfo.teamLeader = atoi(v);

 v = Info_ValueForKey( configstring, "g_redteam" );
 Q_strncpyz(newInfo.redTeam, v, MAX_TEAMNAME);

 v = Info_ValueForKey( configstring, "g_blueteam" );
 Q_strncpyz(newInfo.blueTeam, v, MAX_TEAMNAME);


 v = Info_ValueForKey( configstring, "model" );
 if ( cg_forceModel.integer ) {


  char modelStr[MAX_QPATH];
  char *skin;

  if( cgs.gametype >= GT_TEAM ) {
   Q_strncpyz( newInfo.modelName, DEFAULT_TEAM_MODEL, sizeof( newInfo.modelName ) );
   Q_strncpyz( newInfo.skinName, "default", sizeof( newInfo.skinName ) );
  } else {
   trap_Cvar_VariableStringBuffer( "model", modelStr, sizeof( modelStr ) );
   if ( ( skin = strchr( modelStr, '/' ) ) == ((void*)0)) {
    skin = "default";
   } else {
    *skin++ = 0;
   }

   Q_strncpyz( newInfo.skinName, skin, sizeof( newInfo.skinName ) );
   Q_strncpyz( newInfo.modelName, modelStr, sizeof( newInfo.modelName ) );
  }

  if ( cgs.gametype >= GT_TEAM ) {

   slash = strchr( v, '/' );
   if ( slash ) {
    Q_strncpyz( newInfo.skinName, slash + 1, sizeof( newInfo.skinName ) );
   }
  }
 } else {
  Q_strncpyz( newInfo.modelName, v, sizeof( newInfo.modelName ) );

  slash = strchr( newInfo.modelName, '/' );
  if ( !slash ) {

   Q_strncpyz( newInfo.skinName, "default", sizeof( newInfo.skinName ) );
  } else {
   Q_strncpyz( newInfo.skinName, slash + 1, sizeof( newInfo.skinName ) );

   *slash = 0;
  }
 }


 v = Info_ValueForKey( configstring, "hmodel" );
 if ( cg_forceModel.integer ) {


  char modelStr[MAX_QPATH];
  char *skin;

  if( cgs.gametype >= GT_TEAM ) {
   Q_strncpyz( newInfo.headModelName, DEFAULT_TEAM_MODEL, sizeof( newInfo.headModelName ) );
   Q_strncpyz( newInfo.headSkinName, "default", sizeof( newInfo.headSkinName ) );
  } else {
   trap_Cvar_VariableStringBuffer( "headmodel", modelStr, sizeof( modelStr ) );
   if ( ( skin = strchr( modelStr, '/' ) ) == ((void*)0)) {
    skin = "default";
   } else {
    *skin++ = 0;
   }

   Q_strncpyz( newInfo.headSkinName, skin, sizeof( newInfo.headSkinName ) );
   Q_strncpyz( newInfo.headModelName, modelStr, sizeof( newInfo.headModelName ) );
  }

  if ( cgs.gametype >= GT_TEAM ) {

   slash = strchr( v, '/' );
   if ( slash ) {
    Q_strncpyz( newInfo.headSkinName, slash + 1, sizeof( newInfo.headSkinName ) );
   }
  }
 } else {
  Q_strncpyz( newInfo.headModelName, v, sizeof( newInfo.headModelName ) );

  slash = strchr( newInfo.headModelName, '/' );
  if ( !slash ) {

   Q_strncpyz( newInfo.headSkinName, "default", sizeof( newInfo.headSkinName ) );
  } else {
   Q_strncpyz( newInfo.headSkinName, slash + 1, sizeof( newInfo.headSkinName ) );

   *slash = 0;
  }
 }



 if ( !CG_ScanForExistingClientInfo( &newInfo ) ) {
  qboolean forceDefer;

  forceDefer = trap_MemoryRemaining() < 4000000;


  if ( forceDefer || (cg_deferPlayers.integer && !cg_buildScript.integer && !cg.loading ) ) {

   CG_SetDeferredClientInfo( &newInfo );

   if ( forceDefer ) {
    CG_Printf( "Memory is low.  Using deferred model.\n" );
    newInfo.deferred = qfalse;
   }
  } else {
   CG_LoadClientInfo( &newInfo );
  }
 }


 newInfo.infoValid = qtrue;
 *ci = newInfo;
}

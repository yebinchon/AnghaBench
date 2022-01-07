
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef void* qboolean ;
typedef int mapname ;
struct TYPE_12__ {scalar_t__ type; } ;
struct TYPE_13__ {TYPE_1__ remoteAddress; } ;
struct TYPE_14__ {scalar_t__ state; int lastUsercmd; TYPE_2__ netchan; } ;
typedef TYPE_3__ client_t ;
struct TYPE_19__ {int integer; } ;
struct TYPE_18__ {scalar_t__ serverId; int restartTime; void* restarting; int state; } ;
struct TYPE_17__ {scalar_t__ modified; } ;
struct TYPE_16__ {int integer; scalar_t__ modified; } ;
struct TYPE_15__ {int time; TYPE_3__* clients; int snapFlagServerBit; } ;


 scalar_t__ CS_ACTIVE ;
 scalar_t__ CS_CONNECTED ;
 int CS_WARMUP ;
 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Com_Printf (char*,...) ;
 int Cvar_Set (char*,int ) ;
 int Cvar_VariableString (char*) ;
 int Cvar_VariableValue (char*) ;
 int GAME_CLIENT_CONNECT ;
 int GAME_RUN_FRAME ;
 int MAX_QPATH ;
 scalar_t__ NA_BOT ;
 int Q_strncpyz (char*,int ,int) ;
 int SNAPFLAG_SERVERCOUNT ;
 int SS_GAME ;
 int SS_LOADING ;
 int SV_AddServerCommand (TYPE_3__*,char*) ;
 int SV_ClientEnterWorld (TYPE_3__*,int *) ;
 int SV_DropClient (TYPE_3__*,char*) ;
 int SV_RestartGameProgs () ;
 int SV_SetConfigstring (int ,int ) ;
 int SV_SpawnServer (char*,void*) ;
 int VM_Call (int ,int ,int,...) ;
 char* VM_ExplicitArgPtr (int ,int ) ;
 int atoi (int ) ;
 scalar_t__ com_frameTime ;
 TYPE_8__* com_sv_running ;
 int gvm ;
 void* qfalse ;
 void* qtrue ;
 TYPE_7__ sv ;
 TYPE_6__* sv_gametype ;
 TYPE_5__* sv_maxclients ;
 TYPE_4__ svs ;
 int va (char*,int) ;

__attribute__((used)) static void SV_MapRestart_f( void ) {
 int i;
 client_t *client;
 char *denied;
 qboolean isBot;
 int delay;


 if ( com_frameTime == sv.serverId ) {
  return;
 }


 if ( !com_sv_running->integer ) {
  Com_Printf( "Server is not running.\n" );
  return;
 }

 if ( sv.restartTime ) {
  return;
 }

 if (Cmd_Argc() > 1 ) {
  delay = atoi( Cmd_Argv(1) );
 }
 else {
  delay = 5;
 }
 if( delay && !Cvar_VariableValue("g_doWarmup") ) {
  sv.restartTime = svs.time + delay * 1000;
  SV_SetConfigstring( CS_WARMUP, va("%i", sv.restartTime) );
  return;
 }



 if ( sv_maxclients->modified || sv_gametype->modified ) {
  char mapname[MAX_QPATH];

  Com_Printf( "variable change -- restarting.\n" );

  Q_strncpyz( mapname, Cvar_VariableString( "mapname" ), sizeof( mapname ) );

  SV_SpawnServer( mapname, qfalse );
  return;
 }



 svs.snapFlagServerBit ^= SNAPFLAG_SERVERCOUNT;



 sv.serverId = com_frameTime;
 Cvar_Set( "sv_serverid", va("%i", sv.serverId ) );




 sv.state = SS_LOADING;
 sv.restarting = qtrue;

 SV_RestartGameProgs();


 for ( i = 0 ;i < 3 ; i++ ) {
  VM_Call( gvm, GAME_RUN_FRAME, svs.time );
  svs.time += 100;
 }

 sv.state = SS_GAME;
 sv.restarting = qfalse;


 for (i=0 ; i<sv_maxclients->integer ; i++) {
  client = &svs.clients[i];


  if ( client->state < CS_CONNECTED) {
   continue;
  }

  if ( client->netchan.remoteAddress.type == NA_BOT ) {
   isBot = qtrue;
  } else {
   isBot = qfalse;
  }


  SV_AddServerCommand( client, "map_restart\n" );


  denied = VM_ExplicitArgPtr( gvm, VM_Call( gvm, GAME_CLIENT_CONNECT, i, qfalse, isBot ) );
  if ( denied ) {


   SV_DropClient( client, denied );
   Com_Printf( "SV_MapRestart_f(%d): dropped client %i - denied!\n", delay, i );
   continue;
  }

  client->state = CS_ACTIVE;

  SV_ClientEnterWorld( client, &client->lastUsercmd );
 }


 VM_Call( gvm, GAME_RUN_FRAME, svs.time );
 svs.time += 100;
}

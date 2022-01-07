
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ connected; } ;
struct TYPE_7__ {scalar_t__* persistant; } ;
struct TYPE_9__ {TYPE_2__ pers; TYPE_1__ ps; } ;
typedef TYPE_3__ gclient_t ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {TYPE_3__* clients; scalar_t__* teamScores; scalar_t__ intermissiontime; int * changemap; scalar_t__ restarted; } ;


 int BotInterbreedEndMatch () ;
 scalar_t__ CON_CONNECTED ;
 scalar_t__ CON_CONNECTING ;
 int EXEC_APPEND ;
 scalar_t__ GT_TOURNAMENT ;
 int G_WriteSessionData () ;
 size_t PERS_SCORE ;
 int RemoveTournamentLoser () ;
 size_t TEAM_BLUE ;
 size_t TEAM_RED ;
 TYPE_6__ g_gametype ;
 TYPE_5__ g_maxclients ;
 TYPE_4__ level ;
 scalar_t__ qtrue ;
 int trap_SendConsoleCommand (int ,char*) ;

void ExitLevel (void) {
 int i;
 gclient_t *cl;


 BotInterbreedEndMatch();



 if ( g_gametype.integer == GT_TOURNAMENT ) {
  if ( !level.restarted ) {
   RemoveTournamentLoser();
   trap_SendConsoleCommand( EXEC_APPEND, "map_restart 0\n" );
   level.restarted = qtrue;
   level.changemap = ((void*)0);
   level.intermissiontime = 0;
  }
  return;
 }


 trap_SendConsoleCommand( EXEC_APPEND, "vstr nextmap\n" );
 level.changemap = ((void*)0);
 level.intermissiontime = 0;


 level.teamScores[TEAM_RED] = 0;
 level.teamScores[TEAM_BLUE] = 0;
 for ( i=0 ; i< g_maxclients.integer ; i++ ) {
  cl = level.clients + i;
  if ( cl->pers.connected != CON_CONNECTED ) {
   continue;
  }
  cl->ps.persistant[PERS_SCORE] = 0;
 }


 G_WriteSessionData();



 for (i=0 ; i< g_maxclients.integer ; i++) {
  if ( level.clients[i].pers.connected == CON_CONNECTED ) {
   level.clients[i].pers.connected = CON_CONNECTING;
  }
 }

}

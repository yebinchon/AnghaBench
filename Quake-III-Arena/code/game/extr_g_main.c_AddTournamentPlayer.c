
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sessionTeam; scalar_t__ spectatorState; scalar_t__ spectatorClient; scalar_t__ spectatorTime; } ;
struct TYPE_5__ {scalar_t__ connected; } ;
struct TYPE_7__ {TYPE_2__ sess; TYPE_1__ pers; } ;
typedef TYPE_3__ gclient_t ;
struct TYPE_8__ {int numPlayingClients; int maxclients; int warmupTime; TYPE_3__* clients; scalar_t__ intermissiontime; } ;


 scalar_t__ CON_CONNECTED ;
 scalar_t__ SPECTATOR_SCOREBOARD ;
 int SetTeam (int *,char*) ;
 scalar_t__ TEAM_SPECTATOR ;
 int * g_entities ;
 TYPE_4__ level ;

void AddTournamentPlayer( void ) {
 int i;
 gclient_t *client;
 gclient_t *nextInLine;

 if ( level.numPlayingClients >= 2 ) {
  return;
 }


 if ( level.intermissiontime ) {
  return;
 }

 nextInLine = ((void*)0);

 for ( i = 0 ; i < level.maxclients ; i++ ) {
  client = &level.clients[i];
  if ( client->pers.connected != CON_CONNECTED ) {
   continue;
  }
  if ( client->sess.sessionTeam != TEAM_SPECTATOR ) {
   continue;
  }

  if ( client->sess.spectatorState == SPECTATOR_SCOREBOARD ||
   client->sess.spectatorClient < 0 ) {
   continue;
  }

  if ( !nextInLine || client->sess.spectatorTime < nextInLine->sess.spectatorTime ) {
   nextInLine = client;
  }
 }

 if ( !nextInLine ) {
  return;
 }

 level.warmupTime = -1;


 SetTeam( &g_entities[ nextInLine - level.clients ], "f" );
}

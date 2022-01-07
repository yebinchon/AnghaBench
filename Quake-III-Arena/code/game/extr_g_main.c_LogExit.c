
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_13__ {int ping; int * persistant; } ;
struct TYPE_11__ {scalar_t__ connected; int netname; } ;
struct TYPE_10__ {scalar_t__ sessionTeam; } ;
struct TYPE_14__ {TYPE_4__ ps; TYPE_2__ pers; TYPE_1__ sess; } ;
typedef TYPE_5__ gclient_t ;
struct TYPE_12__ {int svFlags; } ;
struct TYPE_18__ {TYPE_3__ r; } ;
struct TYPE_17__ {scalar_t__ integer; } ;
struct TYPE_16__ {scalar_t__ integer; } ;
struct TYPE_15__ {int numConnectedClients; size_t* sortedClients; int * teamScores; TYPE_5__* clients; int time; int intermissionQueued; } ;


 scalar_t__ CON_CONNECTING ;
 int CS_INTERMISSION ;
 int EXEC_APPEND ;
 scalar_t__ GT_CTF ;
 scalar_t__ GT_TEAM ;
 scalar_t__ GT_TOURNAMENT ;
 int G_LogPrintf (char*,char const*,...) ;
 size_t PERS_RANK ;
 size_t PERS_SCORE ;
 int SVF_BOT ;
 size_t TEAM_BLUE ;
 size_t TEAM_RED ;
 scalar_t__ TEAM_SPECTATOR ;
 TYPE_9__* g_entities ;
 TYPE_8__ g_gametype ;
 TYPE_7__ g_singlePlayer ;
 TYPE_6__ level ;
 int qfalse ;
 int qtrue ;
 int trap_SendConsoleCommand (int ,char*) ;
 int trap_SetConfigstring (int ,char*) ;

void LogExit( const char *string ) {
 int i, numSorted;
 gclient_t *cl;



 G_LogPrintf( "Exit: %s\n", string );

 level.intermissionQueued = level.time;



 trap_SetConfigstring( CS_INTERMISSION, "1" );


 numSorted = level.numConnectedClients;
 if ( numSorted > 32 ) {
  numSorted = 32;
 }

 if ( g_gametype.integer >= GT_TEAM ) {
  G_LogPrintf( "red:%i  blue:%i\n",
   level.teamScores[TEAM_RED], level.teamScores[TEAM_BLUE] );
 }

 for (i=0 ; i < numSorted ; i++) {
  int ping;

  cl = &level.clients[level.sortedClients[i]];

  if ( cl->sess.sessionTeam == TEAM_SPECTATOR ) {
   continue;
  }
  if ( cl->pers.connected == CON_CONNECTING ) {
   continue;
  }

  ping = cl->ps.ping < 999 ? cl->ps.ping : 999;

  G_LogPrintf( "score: %i  ping: %i  client: %i %s\n", cl->ps.persistant[PERS_SCORE], ping, level.sortedClients[i], cl->pers.netname );
 }
}

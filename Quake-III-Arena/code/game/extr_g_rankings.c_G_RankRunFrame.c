
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int grank_status_t ;
struct TYPE_20__ {int svFlags; } ;
struct TYPE_18__ {int clientNum; } ;
struct TYPE_24__ {TYPE_6__* client; TYPE_3__ r; int inuse; TYPE_1__ s; } ;
typedef TYPE_7__ gentity_t ;
struct TYPE_26__ {int integer; } ;
struct TYPE_25__ {int maxclients; scalar_t__ intermissiontime; int time; } ;
struct TYPE_22__ {int* persistant; } ;
struct TYPE_21__ {int netname; int enterTime; } ;
struct TYPE_19__ {int sessionTeam; int spectatorState; } ;
struct TYPE_23__ {int client_status; TYPE_5__ ps; TYPE_4__ pers; TYPE_2__ sess; } ;
struct TYPE_17__ {int integer; } ;
struct TYPE_16__ {int integer; } ;


 int ClientSpawn (TYPE_7__*) ;
 int DeathmatchScoreboardMessage (TYPE_7__*) ;
 int EXEC_INSERT ;
 int GR_GAMEKEY ;
 int GT_TEAM ;
 size_t PERS_MATCH_TIME ;
 int QGR_KEY_PLAYED_WITH ;
 int SPECTATOR_FREE ;
 int SVF_BOT ;
 int SetTeam (TYPE_7__*,char*) ;
 int TEAM_SPECTATOR ;
 TYPE_7__* g_entities ;
 TYPE_11__ g_fraglimit ;
 TYPE_10__ g_gametype ;
 TYPE_9__ g_timelimit ;
 TYPE_8__ level ;
 int trap_Cvar_Set (char*,char*) ;
 scalar_t__ trap_RankActive () ;
 int trap_RankBegin (int ) ;
 int trap_RankCheckInit () ;
 int trap_RankPoll () ;
 int trap_RankReportInt (int,int,int ,int,int ) ;
 int trap_RankUserReset (int ) ;
 int const trap_RankUserStatus (int) ;
 int trap_SendConsoleCommand (int ,char*) ;
 int trap_SendServerCommand (int,char*) ;
 char* va (char*,int) ;

void G_RankRunFrame()
{
 gentity_t* ent;
 gentity_t* ent2;
 grank_status_t old_status;
 grank_status_t status;
 int time;
 int i;
 int j;

 if( !trap_RankCheckInit() )
 {
  trap_RankBegin( GR_GAMEKEY );
 }

 trap_RankPoll();

 if( trap_RankActive() )
 {
  for( i = 0; i < level.maxclients; i++ )
  {
   ent = &(g_entities[i]);
   if ( !ent->inuse )
    continue;
   if ( ent->client == ((void*)0) )
    continue;
   if ( ent->r.svFlags & SVF_BOT)
   {

    trap_SendConsoleCommand( EXEC_INSERT, va("kick %s\n",
     ent->client->pers.netname) );
    continue;
   }

   old_status = ent->client->client_status;
   status = trap_RankUserStatus( i );

   if( ent->client->client_status != status )
   {


    trap_SendServerCommand( i, va("rank_status %i\n",status) );
    if ( i == 0 )
    {
     int j = 0;
    }
    ent->client->client_status = status;
   }

   switch( status )
   {
   case 132:
   case 129:
    if( ent->client->sess.sessionTeam != TEAM_SPECTATOR )
    {
     ent->client->sess.sessionTeam = TEAM_SPECTATOR;
     ent->client->sess.spectatorState = SPECTATOR_FREE;
     ClientSpawn( ent );

     trap_SendServerCommand( i, va("rank_status %i\n",status) );
     trap_SendServerCommand( i, "rank_menu\n" );
    }
    break;
   case 130:
   case 135:
   case 128:
   case 131:
   case 133:
   case 134:
    if( (ent->r.svFlags & SVF_BOT) == 0 )
    {
     trap_RankUserReset( ent->s.clientNum );
    }
    break;
   case 136:
    if( (ent->client->sess.sessionTeam == TEAM_SPECTATOR) &&
     (g_gametype.integer < GT_TEAM) )
    {
     SetTeam( ent, "free" );
    }

    if( old_status != 136 )
    {

     for( j = 0; j < level.maxclients; j++ )
     {
      ent2 = &(g_entities[j]);
      if ( !ent2->inuse )
       continue;
      if ( ent2->client == ((void*)0) )
       continue;
      if ( ent2->r.svFlags & SVF_BOT)
       continue;

      if( (i != j) && (trap_RankUserStatus( j ) == 136) )
      {
       trap_RankReportInt( i, j, QGR_KEY_PLAYED_WITH, 1, 0 );
      }



      DeathmatchScoreboardMessage( ent2 );
     }
    }
    break;
   default:
    break;
   }
  }


  if( ((g_fraglimit.integer == 0) || (g_fraglimit.integer > 100)) &&
   ((g_timelimit.integer == 0) || (g_timelimit.integer > 1000)) )
  {
   trap_Cvar_Set( "timelimit", "1000" );
  }
 }


 if( level.intermissiontime == 0 )
 {
  for( i = 0; i < level.maxclients; i++ )
  {
   ent = &(g_entities[i]);
   if( ent->client == ((void*)0) )
   {
    continue;
   }

   time = (level.time - ent->client->pers.enterTime) / 1000;
   ent->client->ps.persistant[PERS_MATCH_TIME] = time;
  }
 }
}

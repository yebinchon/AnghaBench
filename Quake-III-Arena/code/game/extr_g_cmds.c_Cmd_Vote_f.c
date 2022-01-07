
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int msg ;
struct TYPE_11__ {TYPE_3__* client; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_12__ {int voteNo; int voteYes; int voteTime; } ;
struct TYPE_9__ {int eFlags; } ;
struct TYPE_8__ {scalar_t__ sessionTeam; } ;
struct TYPE_10__ {TYPE_2__ ps; TYPE_1__ sess; } ;


 int CS_VOTE_NO ;
 int CS_VOTE_YES ;
 int EF_VOTED ;
 scalar_t__ TEAM_SPECTATOR ;
 int g_entities ;
 TYPE_6__ level ;
 int trap_Argv (int,char*,int) ;
 int trap_SendServerCommand (TYPE_4__*,char*) ;
 int trap_SetConfigstring (int ,int ) ;
 int va (char*,int ) ;

void Cmd_Vote_f( gentity_t *ent ) {
 char msg[64];

 if ( !level.voteTime ) {
  trap_SendServerCommand( ent-g_entities, "print \"No vote in progress.\n\"" );
  return;
 }
 if ( ent->client->ps.eFlags & EF_VOTED ) {
  trap_SendServerCommand( ent-g_entities, "print \"Vote already cast.\n\"" );
  return;
 }
 if ( ent->client->sess.sessionTeam == TEAM_SPECTATOR ) {
  trap_SendServerCommand( ent-g_entities, "print \"Not allowed to vote as spectator.\n\"" );
  return;
 }

 trap_SendServerCommand( ent-g_entities, "print \"Vote cast.\n\"" );

 ent->client->ps.eFlags |= EF_VOTED;

 trap_Argv( 1, msg, sizeof( msg ) );

 if ( msg[0] == 'y' || msg[1] == 'Y' || msg[1] == '1' ) {
  level.voteYes++;
  trap_SetConfigstring( CS_VOTE_YES, va("%i", level.voteYes ) );
 } else {
  level.voteNo++;
  trap_SetConfigstring( CS_VOTE_NO, va("%i", level.voteNo ) );
 }



}

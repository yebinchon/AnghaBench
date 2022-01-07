
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int s ;
struct TYPE_11__ {TYPE_2__* client; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_13__ {scalar_t__ integer; } ;
struct TYPE_12__ {scalar_t__ time; } ;
struct TYPE_9__ {int sessionTeam; int losses; } ;
struct TYPE_10__ {scalar_t__ switchTeamTime; TYPE_1__ sess; } ;


 scalar_t__ GT_TOURNAMENT ;
 int MAX_TOKEN_CHARS ;
 int SetTeam (TYPE_3__*,char*) ;




 int g_entities ;
 TYPE_6__ g_gametype ;
 TYPE_5__ level ;
 int trap_Argc () ;
 int trap_Argv (int,char*,int) ;
 int trap_SendServerCommand (TYPE_3__*,char*) ;

void Cmd_Team_f( gentity_t *ent ) {
 int oldTeam;
 char s[MAX_TOKEN_CHARS];

 if ( trap_Argc() != 2 ) {
  oldTeam = ent->client->sess.sessionTeam;
  switch ( oldTeam ) {
  case 131:
   trap_SendServerCommand( ent-g_entities, "print \"Blue team\n\"" );
   break;
  case 129:
   trap_SendServerCommand( ent-g_entities, "print \"Red team\n\"" );
   break;
  case 130:
   trap_SendServerCommand( ent-g_entities, "print \"Free team\n\"" );
   break;
  case 128:
   trap_SendServerCommand( ent-g_entities, "print \"Spectator team\n\"" );
   break;
  }
  return;
 }

 if ( ent->client->switchTeamTime > level.time ) {
  trap_SendServerCommand( ent-g_entities, "print \"May not switch teams more than once per 5 seconds.\n\"" );
  return;
 }


 if ( (g_gametype.integer == GT_TOURNAMENT )
  && ent->client->sess.sessionTeam == 130 ) {
  ent->client->sess.losses++;
 }

 trap_Argv( 1, s, sizeof( s ) );

 SetTeam( ent, s );

 ent->client->switchTeamTime = level.time + 5000;
}

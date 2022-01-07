
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int team_t ;
typedef int spectatorState_t ;
typedef int s ;
typedef int qboolean ;
struct TYPE_6__ {int teamLeader; int spectatorState; int sessionTeam; int losses; int wins; int spectatorClient; int spectatorTime; } ;
struct TYPE_7__ {TYPE_1__ sess; } ;
typedef TYPE_2__ gclient_t ;
struct TYPE_8__ {int clients; } ;


 int MAX_STRING_CHARS ;
 TYPE_4__ level ;
 int sscanf (char*,char*,int*,int *,int*,int *,int *,int *,int*) ;
 int trap_Cvar_VariableStringBuffer (char const*,char*,int) ;
 char* va (char*,TYPE_2__*) ;

void G_ReadSessionData( gclient_t *client ) {
 char s[MAX_STRING_CHARS];
 const char *var;


 int teamLeader;
 int spectatorState;
 int sessionTeam;

 var = va( "session%i", client - level.clients );
 trap_Cvar_VariableStringBuffer( var, s, sizeof(s) );

 sscanf( s, "%i %i %i %i %i %i %i",
  &sessionTeam,
  &client->sess.spectatorTime,
  &spectatorState,
  &client->sess.spectatorClient,
  &client->sess.wins,
  &client->sess.losses,
  &teamLeader
  );


 client->sess.sessionTeam = (team_t)sessionTeam;
 client->sess.spectatorState = (spectatorState_t)spectatorState;
 client->sess.teamLeader = (qboolean)teamLeader;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* teamVoteTime; scalar_t__ time; int* teamVoteYes; int* numteamVotingClients; int* teamVoteNo; scalar_t__* teamVoteString; } ;


 scalar_t__ CS_TEAMVOTE_TIME ;
 int EXEC_APPEND ;
 int Q_strncmp (char*,scalar_t__,int) ;
 int SetLeader (int,int ) ;
 int TEAM_BLUE ;
 int TEAM_RED ;
 scalar_t__ VOTE_TIME ;
 int atoi (scalar_t__) ;
 TYPE_1__ level ;
 int trap_SendConsoleCommand (int ,int ) ;
 int trap_SendServerCommand (int,char*) ;
 int trap_SetConfigstring (scalar_t__,char*) ;
 int va (char*,scalar_t__) ;

void CheckTeamVote( int team ) {
 int cs_offset;

 if ( team == TEAM_RED )
  cs_offset = 0;
 else if ( team == TEAM_BLUE )
  cs_offset = 1;
 else
  return;

 if ( !level.teamVoteTime[cs_offset] ) {
  return;
 }
 if ( level.time - level.teamVoteTime[cs_offset] >= VOTE_TIME ) {
  trap_SendServerCommand( -1, "print \"Team vote failed.\n\"" );
 } else {
  if ( level.teamVoteYes[cs_offset] > level.numteamVotingClients[cs_offset]/2 ) {

   trap_SendServerCommand( -1, "print \"Team vote passed.\n\"" );

   if ( !Q_strncmp( "leader", level.teamVoteString[cs_offset], 6) ) {

    SetLeader(team, atoi(level.teamVoteString[cs_offset] + 7));
   }
   else {
    trap_SendConsoleCommand( EXEC_APPEND, va("%s\n", level.teamVoteString[cs_offset] ) );
   }
  } else if ( level.teamVoteNo[cs_offset] >= level.numteamVotingClients[cs_offset]/2 ) {

   trap_SendServerCommand( -1, "print \"Team vote failed.\n\"" );
  } else {

   return;
  }
 }
 level.teamVoteTime[cs_offset] = 0;
 trap_SetConfigstring( CS_TEAMVOTE_TIME + cs_offset, "" );

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ voteExecuteTime; scalar_t__ time; scalar_t__ voteTime; int voteYes; int numVotingClients; int voteNo; int voteString; } ;


 int CS_VOTE_TIME ;
 int EXEC_APPEND ;
 scalar_t__ VOTE_TIME ;
 TYPE_1__ level ;
 int trap_SendConsoleCommand (int ,int ) ;
 int trap_SendServerCommand (int,char*) ;
 int trap_SetConfigstring (int ,char*) ;
 int va (char*,int ) ;

void CheckVote( void ) {
 if ( level.voteExecuteTime && level.voteExecuteTime < level.time ) {
  level.voteExecuteTime = 0;
  trap_SendConsoleCommand( EXEC_APPEND, va("%s\n", level.voteString ) );
 }
 if ( !level.voteTime ) {
  return;
 }
 if ( level.time - level.voteTime >= VOTE_TIME ) {
  trap_SendServerCommand( -1, "print \"Vote failed.\n\"" );
 } else {

  if ( level.voteYes > level.numVotingClients/2 ) {

   trap_SendServerCommand( -1, "print \"Vote passed.\n\"" );
   level.voteExecuteTime = level.time + 3000;
  } else if ( level.voteNo >= level.numVotingClients/2 ) {

   trap_SendServerCommand( -1, "print \"Vote failed.\n\"" );
  } else {

   return;
  }
 }
 level.voteTime = 0;
 trap_SetConfigstring( CS_VOTE_TIME, "" );

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reliableSent; int reliableSequence; char const** reliableCommands; } ;
typedef TYPE_1__ client_t ;


 int MAX_RELIABLE_COMMANDS ;
 int Q_strncmp (char const*,char const*,int ) ;
 int Q_strncpyz (char const*,char const*,int) ;
 int qfalse ;
 int qtrue ;
 int sscanf (char const*,char*,int*) ;
 int strlen (char*) ;

int SV_ReplacePendingServerCommands( client_t *client, const char *cmd ) {
 int i, index, csnum1, csnum2;

 for ( i = client->reliableSent+1; i <= client->reliableSequence; i++ ) {
  index = i & ( MAX_RELIABLE_COMMANDS - 1 );

  if ( !Q_strncmp(cmd, client->reliableCommands[ index ], strlen("cs")) ) {
   sscanf(cmd, "cs %i", &csnum1);
   sscanf(client->reliableCommands[ index ], "cs %i", &csnum2);
   if ( csnum1 == csnum2 ) {
    Q_strncpyz( client->reliableCommands[ index ], cmd, sizeof( client->reliableCommands[ index ] ) );





    return qtrue;
   }
  }
 }
 return qfalse;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reliableSequence; int reliableAcknowledge; int * reliableCommands; } ;


 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 int MAX_RELIABLE_COMMANDS ;
 int Q_strncpyz (int ,char const*,int) ;
 TYPE_1__ clc ;

void CL_AddReliableCommand( const char *cmd ) {
 int index;



 if ( clc.reliableSequence - clc.reliableAcknowledge > MAX_RELIABLE_COMMANDS ) {
  Com_Error( ERR_DROP, "Client command overflow" );
 }
 clc.reliableSequence++;
 index = clc.reliableSequence & ( MAX_RELIABLE_COMMANDS - 1 );
 Q_strncpyz( clc.reliableCommands[ index ], cmd, sizeof( clc.reliableCommands[ index ] ) );
}

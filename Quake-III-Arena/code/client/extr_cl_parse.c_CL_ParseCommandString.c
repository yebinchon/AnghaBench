
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int msg_t ;
struct TYPE_2__ {int serverCommandSequence; int * serverCommands; } ;


 int MAX_RELIABLE_COMMANDS ;
 int MSG_ReadLong (int *) ;
 char* MSG_ReadString (int *) ;
 int Q_strncpyz (int ,char*,int) ;
 TYPE_1__ clc ;

void CL_ParseCommandString( msg_t *msg ) {
 char *s;
 int seq;
 int index;

 seq = MSG_ReadLong( msg );
 s = MSG_ReadString( msg );


 if ( clc.serverCommandSequence >= seq ) {
  return;
 }
 clc.serverCommandSequence = seq;

 index = seq & (MAX_RELIABLE_COMMANDS-1);
 Q_strncpyz( clc.serverCommands[ index ], s, sizeof( clc.serverCommands[ index ] ) );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reliableSequence; char** reliableCommands; } ;


 int MAX_RELIABLE_COMMANDS ;
 int MAX_STRING_CHARS ;
 TYPE_1__ clc ;
 int random () ;
 int strlen (char*) ;

void CL_ChangeReliableCommand( void ) {
 int r, index, l;

 r = clc.reliableSequence - (random() * 5);
 index = clc.reliableSequence & ( MAX_RELIABLE_COMMANDS - 1 );
 l = strlen(clc.reliableCommands[ index ]);
 if ( l >= MAX_STRING_CHARS - 1 ) {
  l = MAX_STRING_CHARS - 2;
 }
 clc.reliableCommands[ index ][ l ] = '\n';
 clc.reliableCommands[ index ][ l+1 ] = '\0';
}

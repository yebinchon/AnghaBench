
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int serverCommandSequence; } ;


 int CG_ServerCommand () ;
 TYPE_1__ cgs ;
 scalar_t__ trap_GetServerCommand (int) ;

void CG_ExecuteNewServerCommands( int latestSequence ) {
 while ( cgs.serverCommandSequence < latestSequence ) {
  if ( trap_GetServerCommand( ++cgs.serverCommandSequence ) ) {
   CG_ServerCommand();
  }
 }
}

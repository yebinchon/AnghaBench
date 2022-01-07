
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Com_Printf (char*) ;
 int S_StartBackgroundTrack (int ,int ) ;
 scalar_t__* s_backgroundLoop ;

void S_Music_f( void ) {
 int c;

 c = Cmd_Argc();

 if ( c == 2 ) {
  S_StartBackgroundTrack( Cmd_Argv(1), Cmd_Argv(1) );
  s_backgroundLoop[0] = 0;
 } else if ( c == 3 ) {
  S_StartBackgroundTrack( Cmd_Argv(1), Cmd_Argv(2) );
 } else {
  Com_Printf ("music <musicfile> [loopfile]\n");
  return;
 }

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_RemoveCommand (char*) ;
 int SNDDMA_Shutdown () ;
 scalar_t__ s_soundStarted ;

void S_Shutdown( void ) {
 if ( !s_soundStarted ) {
  return;
 }

 SNDDMA_Shutdown();

 s_soundStarted = 0;

    Cmd_RemoveCommand("play");
 Cmd_RemoveCommand("music");
 Cmd_RemoveCommand("stopsound");
 Cmd_RemoveCommand("soundlist");
 Cmd_RemoveCommand("soundinfo");
}

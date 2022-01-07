
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_RemoveCommand (char*) ;
 int IN_DeactivateMouse () ;
 int IN_ShutdownDIMouse () ;
 int IN_ShutdownMIDI () ;

void IN_Shutdown( void ) {
 IN_DeactivateMouse();
 IN_ShutdownDIMouse();
 IN_ShutdownMIDI();
 Cmd_RemoveCommand("midiinfo" );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVAR_ARCHIVE ;
 int CVAR_LATCH ;
 int CVAR_TEMP ;
 int Cmd_AddCommand (char*,int ) ;
 void* Cvar_Get (char*,char*,int) ;
 int IN_Startup () ;
 int MidiInfo_f ;
 void* in_debugJoystick ;
 void* in_joyBallScale ;
 void* in_joystick ;
 void* in_logitechbug ;
 void* in_midi ;
 void* in_midichannel ;
 void* in_mididevice ;
 void* in_midiport ;
 void* in_mouse ;
 void* joy_threshold ;

void IN_Init( void ) {

 in_midi = Cvar_Get ("in_midi", "0", CVAR_ARCHIVE);
 in_midiport = Cvar_Get ("in_midiport", "1", CVAR_ARCHIVE);
 in_midichannel = Cvar_Get ("in_midichannel", "1", CVAR_ARCHIVE);
 in_mididevice = Cvar_Get ("in_mididevice", "0", CVAR_ARCHIVE);

 Cmd_AddCommand( "midiinfo", MidiInfo_f );


  in_mouse = Cvar_Get ("in_mouse", "1", CVAR_ARCHIVE|CVAR_LATCH);
 in_logitechbug = Cvar_Get ("in_logitechbug", "0", CVAR_ARCHIVE);


 in_joystick = Cvar_Get ("in_joystick", "0", CVAR_ARCHIVE|CVAR_LATCH);
 in_joyBallScale = Cvar_Get ("in_joyBallScale", "0.02", CVAR_ARCHIVE);
 in_debugJoystick = Cvar_Get ("in_debugjoystick", "0", CVAR_TEMP);

 joy_threshold = Cvar_Get ("joy_threshold", "0.15", CVAR_ARCHIVE);

 IN_Startup();
}

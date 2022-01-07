
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ value; } ;


 int CVAR_ARCHIVE ;
 int CVAR_LATCH ;
 int CVAR_TEMP ;
 int Com_Printf (char*) ;
 void* Cvar_Get (char*,char*,int) ;
 int IN_StartupJoystick () ;
 void* in_dgamouse ;
 void* in_joystick ;
 void* in_joystickDebug ;
 TYPE_1__* in_mouse ;
 void* in_nograb ;
 void* in_subframe ;
 void* joy_threshold ;
 int mouse_avail ;
 int qfalse ;
 int qtrue ;

void IN_Init(void) {
 Com_Printf ("\n------- Input Initialization -------\n");

  in_mouse = Cvar_Get ("in_mouse", "1", CVAR_ARCHIVE);
  in_dgamouse = Cvar_Get ("in_dgamouse", "1", CVAR_ARCHIVE);


 in_subframe = Cvar_Get ("in_subframe", "1", CVAR_ARCHIVE);


 in_nograb = Cvar_Get ("in_nograb", "0", 0);


  in_joystick = Cvar_Get ("in_joystick", "0", CVAR_ARCHIVE|CVAR_LATCH);

  in_joystickDebug = Cvar_Get ("in_debugjoystick", "0", CVAR_TEMP);
  joy_threshold = Cvar_Get ("joy_threshold", "0.15", CVAR_ARCHIVE);

  if (in_mouse->value)
    mouse_avail = qtrue;
  else
    mouse_avail = qfalse;

  IN_StartupJoystick( );
 Com_Printf ("------------------------------------\n");
}

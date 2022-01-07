
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* modified; } ;
struct TYPE_3__ {void* modified; } ;


 int Com_Printf (char*) ;
 int IN_StartupJoystick () ;
 int IN_StartupMIDI () ;
 int IN_StartupMouse () ;
 TYPE_2__* in_joystick ;
 TYPE_1__* in_mouse ;
 void* qfalse ;

void IN_Startup( void ) {
 Com_Printf ("\n------- Input Initialization -------\n");
 IN_StartupMouse ();
 IN_StartupJoystick ();
 IN_StartupMIDI();
 Com_Printf ("------------------------------------\n");

 in_mouse->modified = qfalse;
 in_joystick->modified = qfalse;
}

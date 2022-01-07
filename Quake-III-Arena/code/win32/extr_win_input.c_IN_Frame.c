
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int keyCatchers; } ;
struct TYPE_5__ {scalar_t__ hWnd; } ;
struct TYPE_4__ {scalar_t__ mouseStartupDelayed; int mouseInitialized; } ;


 int Com_Printf (char*) ;
 int Cvar_VariableString (char*) ;
 scalar_t__ Cvar_VariableValue (char*) ;
 int IN_ActivateMouse () ;
 int IN_DeactivateMouse () ;
 int IN_JoyMove () ;
 int IN_MouseMove () ;
 int IN_StartupMouse () ;
 int KEYCATCH_CONSOLE ;
 int _3DFX_DRIVER_NAME ;
 TYPE_3__ cls ;
 TYPE_2__ g_wv ;
 int in_appactive ;
 scalar_t__ qfalse ;
 TYPE_1__ s_wmv ;
 scalar_t__ strcmp (int ,int ) ;

void IN_Frame (void) {

 IN_JoyMove();

 if ( !s_wmv.mouseInitialized ) {
    if (s_wmv.mouseStartupDelayed && g_wv.hWnd)
  {
   Com_Printf("Proceeding with delayed mouse init\n");
      IN_StartupMouse();
   s_wmv.mouseStartupDelayed = qfalse;
  }
  return;
 }

 if ( cls.keyCatchers & KEYCATCH_CONSOLE ) {



  if (Cvar_VariableValue ("r_fullscreen") == 0
   && strcmp( Cvar_VariableString("r_glDriver"), _3DFX_DRIVER_NAME) ) {
   IN_DeactivateMouse ();
   return;
  }
 }

 if ( !in_appactive ) {
  IN_DeactivateMouse ();
  return;
 }

 IN_ActivateMouse();


 IN_MouseMove();

}

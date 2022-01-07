
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int keyCatchers; } ;


 int Cvar_VariableString (char*) ;
 scalar_t__ Cvar_VariableValue (char*) ;
 int IN_ActivateMouse () ;
 int IN_DeactivateMouse () ;
 int IN_JoyMove () ;
 int KEYCATCH_CONSOLE ;
 int _3DFX_DRIVER_NAME ;
 TYPE_1__ cls ;
 scalar_t__ strcmp (int ,int ) ;

void IN_Frame (void) {


  IN_JoyMove();

  if ( cls.keyCatchers & KEYCATCH_CONSOLE )
  {



    if (Cvar_VariableValue ("r_fullscreen") == 0
        && strcmp( Cvar_VariableString("r_glDriver"), _3DFX_DRIVER_NAME ) )
    {
      IN_DeactivateMouse ();
      return;
    }
  }

  IN_ActivateMouse();
}

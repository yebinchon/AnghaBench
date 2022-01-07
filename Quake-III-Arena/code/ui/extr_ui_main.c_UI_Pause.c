
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ qboolean ;


 int KEYCATCH_UI ;
 int trap_Cvar_Set (char*,char*) ;
 int trap_Key_ClearStates () ;
 int trap_Key_GetCatcher () ;
 int trap_Key_SetCatcher (int) ;

__attribute__((used)) static void UI_Pause(qboolean b) {
 if (b) {

   trap_Cvar_Set( "cl_paused", "1" );
  trap_Key_SetCatcher( KEYCATCH_UI );
 } else {

  trap_Key_SetCatcher( trap_Key_GetCatcher() & ~KEYCATCH_UI );
  trap_Key_ClearStates();
  trap_Cvar_Set( "cl_paused", "0" );
 }
}

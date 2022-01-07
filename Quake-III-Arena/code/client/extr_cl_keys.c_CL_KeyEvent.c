
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
typedef int cmd ;
struct TYPE_6__ {scalar_t__ demoplaying; } ;
struct TYPE_5__ {scalar_t__ state; int keyCatchers; } ;
struct TYPE_4__ {int repeats; char* binding; scalar_t__ down; } ;


 scalar_t__ CA_ACTIVE ;
 scalar_t__ CA_CINEMATIC ;
 scalar_t__ CA_DISCONNECTED ;
 int CGAME_EVENT_NONE ;
 int CG_EVENT_HANDLING ;
 int CG_KEY_EVENT ;
 int CL_AddKeyUpCommands (int,char*) ;
 int CL_Disconnect_f () ;
 int Cbuf_AddText (char*) ;
 int Cbuf_ExecuteText (int ,char*) ;
 int Com_Printf (char*,...) ;
 int Com_sprintf (char*,int,char*,char*,int,unsigned int) ;
 int Con_ToggleConsole_f () ;
 int Console_Key (int) ;
 int Cvar_Set (char*,char*) ;
 scalar_t__ Cvar_VariableValue (char*) ;
 int EXEC_APPEND ;
 int KEYCATCH_CGAME ;
 int KEYCATCH_CONSOLE ;
 int KEYCATCH_MESSAGE ;
 int KEYCATCH_UI ;
 size_t K_ALT ;
 int K_ENTER ;
 int K_ESCAPE ;
 int K_MOUSE1 ;
 int Key_ClearStates () ;
 int Key_KeynumToString (int) ;
 int Message_Key (int) ;
 int S_StopAllSounds () ;
 int UIMENU_INGAME ;
 int UIMENU_MAIN ;
 int UI_KEY_EVENT ;
 int UI_SET_ACTIVE_MENU ;
 int VM_Call (scalar_t__,int ,int,...) ;
 scalar_t__ anykeydown ;
 scalar_t__ cgvm ;
 TYPE_3__ clc ;
 TYPE_2__ cls ;
 TYPE_1__* keys ;
 scalar_t__ uivm ;

void CL_KeyEvent (int key, qboolean down, unsigned time) {
 char *kb;
 char cmd[1024];


 keys[key].down = down;

 if (down) {
  keys[key].repeats++;
  if ( keys[key].repeats == 1) {
   anykeydown++;
  }
 } else {
  keys[key].repeats = 0;
  anykeydown--;
  if (anykeydown < 0) {
   anykeydown = 0;
  }
 }


  if (key == K_ENTER)
  {
    if (down)
    {
      if (keys[K_ALT].down)
      {
        Key_ClearStates();
        if (Cvar_VariableValue("r_fullscreen") == 0)
        {
          Com_Printf("Switching to fullscreen rendering\n");
          Cvar_Set("r_fullscreen", "1");
        }
        else
        {
          Com_Printf("Switching to windowed rendering\n");
          Cvar_Set("r_fullscreen", "0");
        }
        Cbuf_ExecuteText( EXEC_APPEND, "vid_restart\n");
        return;
      }
    }
  }



 if (key == '`' || key == '~') {
  if (!down) {
   return;
  }
    Con_ToggleConsole_f ();
  return;
 }



 if ( down && ( key < 128 || key == K_MOUSE1 ) && ( clc.demoplaying || cls.state == CA_CINEMATIC ) && !cls.keyCatchers) {

  if (Cvar_VariableValue ("com_cameraMode") == 0) {
   Cvar_Set ("nextdemo","");
   key = K_ESCAPE;
  }
 }



 if ( key == K_ESCAPE && down ) {
  if ( cls.keyCatchers & KEYCATCH_MESSAGE ) {

   Message_Key( key );
   return;
  }


  if (cls.keyCatchers & KEYCATCH_CGAME) {
   cls.keyCatchers &= ~KEYCATCH_CGAME;
   VM_Call (cgvm, CG_EVENT_HANDLING, CGAME_EVENT_NONE);
   return;
  }

  if ( !( cls.keyCatchers & KEYCATCH_UI ) ) {
   if ( cls.state == CA_ACTIVE && !clc.demoplaying ) {
    VM_Call( uivm, UI_SET_ACTIVE_MENU, UIMENU_INGAME );
   }
   else {
    CL_Disconnect_f();
    S_StopAllSounds();
    VM_Call( uivm, UI_SET_ACTIVE_MENU, UIMENU_MAIN );
   }
   return;
  }

  VM_Call( uivm, UI_KEY_EVENT, key, down );
  return;
 }







 if (!down) {
  kb = keys[key].binding;

  CL_AddKeyUpCommands( key, kb );

  if ( cls.keyCatchers & KEYCATCH_UI && uivm ) {
   VM_Call( uivm, UI_KEY_EVENT, key, down );
  } else if ( cls.keyCatchers & KEYCATCH_CGAME && cgvm ) {
   VM_Call( cgvm, CG_KEY_EVENT, key, down );
  }

  return;
 }



 if ( cls.keyCatchers & KEYCATCH_CONSOLE ) {
  Console_Key( key );
 } else if ( cls.keyCatchers & KEYCATCH_UI ) {
  if ( uivm ) {
   VM_Call( uivm, UI_KEY_EVENT, key, down );
  }
 } else if ( cls.keyCatchers & KEYCATCH_CGAME ) {
  if ( cgvm ) {
   VM_Call( cgvm, CG_KEY_EVENT, key, down );
  }
 } else if ( cls.keyCatchers & KEYCATCH_MESSAGE ) {
  Message_Key( key );
 } else if ( cls.state == CA_DISCONNECTED ) {
  Console_Key( key );
 } else {

  kb = keys[key].binding;
  if ( !kb ) {
   if (key >= 200) {
    Com_Printf ("%s is unbound, use controls menu to set.\n"
     , Key_KeynumToString( key ) );
   }
  } else if (kb[0] == '+') {
   int i;
   char button[1024], *buttonPtr;
   buttonPtr = button;
   for ( i = 0; ; i++ ) {
    if ( kb[i] == ';' || !kb[i] ) {
     *buttonPtr = '\0';
     if ( button[0] == '+') {


      Com_sprintf (cmd, sizeof(cmd), "%s %i %i\n", button, key, time);
      Cbuf_AddText (cmd);
     } else {

      Cbuf_AddText (button);
      Cbuf_AddText ("\n");
     }
     buttonPtr = button;
     while ( (kb[i] <= ' ' || kb[i] == ';') && kb[i] != 0 ) {
      i++;
     }
    }
    *buttonPtr++ = kb[i];
    if ( !kb[i] ) {
     break;
    }
   }
  } else {

   Cbuf_AddText (kb);
   Cbuf_AddText ("\n");
  }
 }
}

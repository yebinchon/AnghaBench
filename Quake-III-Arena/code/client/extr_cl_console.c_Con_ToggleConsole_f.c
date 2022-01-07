
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; int keyCatchers; } ;
struct TYPE_4__ {int widthInChars; } ;


 scalar_t__ CA_DISCONNECTED ;
 int CL_StartDemoLoop () ;
 int Con_ClearNotify () ;
 int Field_Clear (TYPE_1__*) ;
 int KEYCATCH_CONSOLE ;
 TYPE_2__ cls ;
 TYPE_1__ g_consoleField ;
 int g_console_field_width ;

void Con_ToggleConsole_f (void) {

 if ( cls.state == CA_DISCONNECTED && cls.keyCatchers == KEYCATCH_CONSOLE ) {
  CL_StartDemoLoop();
  return;
 }

 Field_Clear( &g_consoleField );
 g_consoleField.widthInChars = g_console_field_width;

 Con_ClearNotify ();
 cls.keyCatchers ^= KEYCATCH_CONSOLE;
}

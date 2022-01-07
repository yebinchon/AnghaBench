
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* widthInChars; } ;


 int COMMAND_HISTORY ;
 int Cmd_AddCommand (char*,int ) ;
 int Con_Clear_f ;
 int Con_Dump_f ;
 int Con_MessageMode2_f ;
 int Con_MessageMode3_f ;
 int Con_MessageMode4_f ;
 int Con_MessageMode_f ;
 int Con_ToggleConsole_f ;
 void* Cvar_Get (char*,char*,int ) ;
 int Field_Clear (TYPE_1__*) ;
 void* con_conspeed ;
 void* con_notifytime ;
 TYPE_1__ g_consoleField ;
 void* g_console_field_width ;
 TYPE_1__* historyEditLines ;

void Con_Init (void) {
 int i;

 con_notifytime = Cvar_Get ("con_notifytime", "3", 0);
 con_conspeed = Cvar_Get ("scr_conspeed", "3", 0);

 Field_Clear( &g_consoleField );
 g_consoleField.widthInChars = g_console_field_width;
 for ( i = 0 ; i < COMMAND_HISTORY ; i++ ) {
  Field_Clear( &historyEditLines[i] );
  historyEditLines[i].widthInChars = g_console_field_width;
 }

 Cmd_AddCommand ("toggleconsole", Con_ToggleConsole_f);
 Cmd_AddCommand ("messagemode", Con_MessageMode_f);
 Cmd_AddCommand ("messagemode2", Con_MessageMode2_f);
 Cmd_AddCommand ("messagemode3", Con_MessageMode3_f);
 Cmd_AddCommand ("messagemode4", Con_MessageMode4_f);
 Cmd_AddCommand ("clear", Con_Clear_f);
 Cmd_AddCommand ("condump", Con_Dump_f);
}

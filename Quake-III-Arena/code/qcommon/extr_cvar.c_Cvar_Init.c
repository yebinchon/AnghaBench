
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVAR_ROM ;
 int CVAR_SYSTEMINFO ;
 int Cmd_AddCommand (char*,int ) ;
 int Cvar_Get (char*,char*,int) ;
 int Cvar_List_f ;
 int Cvar_Reset_f ;
 int Cvar_Restart_f ;
 int Cvar_SetA_f ;
 int Cvar_SetS_f ;
 int Cvar_SetU_f ;
 int Cvar_Set_f ;
 int Cvar_Toggle_f ;
 int cvar_cheats ;

void Cvar_Init (void) {
 cvar_cheats = Cvar_Get("sv_cheats", "1", CVAR_ROM | CVAR_SYSTEMINFO );

 Cmd_AddCommand ("toggle", Cvar_Toggle_f);
 Cmd_AddCommand ("set", Cvar_Set_f);
 Cmd_AddCommand ("sets", Cvar_SetS_f);
 Cmd_AddCommand ("setu", Cvar_SetU_f);
 Cmd_AddCommand ("seta", Cvar_SetA_f);
 Cmd_AddCommand ("reset", Cvar_Reset_f);
 Cmd_AddCommand ("cvarlist", Cvar_List_f);
 Cmd_AddCommand ("cvar_restart", Cvar_Restart_f);
}

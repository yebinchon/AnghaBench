
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_AddCommand (char*,int ) ;
 int Cvar_Set (char*,char*) ;
 int IN_Init () ;
 char* Sys_GetCurrentUser () ;
 int Sys_In_Restart_f ;

void Sys_Init(void)
{
  Cmd_AddCommand ("in_restart", Sys_In_Restart_f);
  Cvar_Set( "arch", "linux unknown" );
  Cvar_Set( "username", Sys_GetCurrentUser() );

  IN_Init();

}

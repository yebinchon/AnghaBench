
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dwOSVersionInfoSize; int dwMajorVersion; scalar_t__ dwPlatformId; int dwBuildNumber; } ;
struct TYPE_3__ {scalar_t__ hInstance; TYPE_2__ osversion; } ;
 int CVAR_ROM ;
 int Cmd_AddCommand (char*,int ) ;
 int Com_Error (int ,char*,int) ;
 int Com_Printf (char*,...) ;
 int Cvar_Get (char*,char*,int ) ;
 int Cvar_Set (char*,char*) ;
 int Cvar_SetValue (char*,int) ;
 int Cvar_VariableString (char*) ;
 int ERR_FATAL ;
 int GetVersionEx (TYPE_2__*) ;
 int IN_Init () ;
 scalar_t__ LOWORD (int ) ;
 scalar_t__ MainWndProc ;
 scalar_t__ OSR2_BUILD_NUMBER ;
 int Q_stricmp (int ,char*) ;
 int Sys_Error (char*) ;
 char* Sys_GetCurrentUser () ;
 int Sys_GetProcessorId () ;
 int Sys_In_Restart_f ;
 int Sys_Net_Restart_f ;
 scalar_t__ VER_PLATFORM_WIN32_NT ;
 scalar_t__ VER_PLATFORM_WIN32_WINDOWS ;
 scalar_t__ VER_PLATFORM_WIN32s ;
 scalar_t__ WIN98_BUILD_NUMBER ;
 TYPE_1__ g_wv ;
 int timeBeginPeriod (int) ;
 char* va (char*,int) ;

void Sys_Init( void ) {
 int cpuid;



 timeBeginPeriod( 1 );

 Cmd_AddCommand ("in_restart", Sys_In_Restart_f);
 Cmd_AddCommand ("net_restart", Sys_Net_Restart_f);

 g_wv.osversion.dwOSVersionInfoSize = sizeof( g_wv.osversion );

 if (!GetVersionEx (&g_wv.osversion))
  Sys_Error ("Couldn't get OS info");

 if (g_wv.osversion.dwMajorVersion < 4)
  Sys_Error ("Quake3 requires Windows version 4 or greater");
 if (g_wv.osversion.dwPlatformId == VER_PLATFORM_WIN32s)
  Sys_Error ("Quake3 doesn't run on Win32s");

 if ( g_wv.osversion.dwPlatformId == VER_PLATFORM_WIN32_NT )
 {
  Cvar_Set( "arch", "winnt" );
 }
 else if ( g_wv.osversion.dwPlatformId == VER_PLATFORM_WIN32_WINDOWS )
 {
  if ( LOWORD( g_wv.osversion.dwBuildNumber ) >= WIN98_BUILD_NUMBER )
  {
   Cvar_Set( "arch", "win98" );
  }
  else if ( LOWORD( g_wv.osversion.dwBuildNumber ) >= OSR2_BUILD_NUMBER )
  {
   Cvar_Set( "arch", "win95 osr2.x" );
  }
  else
  {
   Cvar_Set( "arch", "win95" );
  }
 }
 else
 {
  Cvar_Set( "arch", "unknown Windows variant" );
 }


 Cvar_Get( "win_hinstance", va("%i", (int)g_wv.hInstance), CVAR_ROM );
 Cvar_Get( "win_wndproc", va("%i", (int)MainWndProc), CVAR_ROM );




 Cvar_Get( "sys_cpustring", "detect", 0 );
 if ( !Q_stricmp( Cvar_VariableString( "sys_cpustring"), "detect" ) )
 {
  Com_Printf( "...detecting CPU, found " );

  cpuid = Sys_GetProcessorId();

  switch ( cpuid )
  {
  case 132:
   Cvar_Set( "sys_cpustring", "generic" );
   break;
  case 128:
   Cvar_Set( "sys_cpustring", "x86 (pre-Pentium)" );
   break;
  case 129:
   Cvar_Set( "sys_cpustring", "x86 (P5/PPro, non-MMX)" );
   break;
  case 130:
   Cvar_Set( "sys_cpustring", "x86 (P5/Pentium2, MMX)" );
   break;
  case 131:
   Cvar_Set( "sys_cpustring", "Intel Pentium III" );
   break;
  case 134:
   Cvar_Set( "sys_cpustring", "AMD w/ 3DNow!" );
   break;
  case 133:
   Cvar_Set( "sys_cpustring", "Alpha AXP" );
   break;
  default:
   Com_Error( ERR_FATAL, "Unknown cpu type %d\n", cpuid );
   break;
  }
 }
 else
 {
  Com_Printf( "...forcing CPU type to " );
  if ( !Q_stricmp( Cvar_VariableString( "sys_cpustring" ), "generic" ) )
  {
   cpuid = 132;
  }
  else if ( !Q_stricmp( Cvar_VariableString( "sys_cpustring" ), "x87" ) )
  {
   cpuid = 129;
  }
  else if ( !Q_stricmp( Cvar_VariableString( "sys_cpustring" ), "mmx" ) )
  {
   cpuid = 130;
  }
  else if ( !Q_stricmp( Cvar_VariableString( "sys_cpustring" ), "3dnow" ) )
  {
   cpuid = 134;
  }
  else if ( !Q_stricmp( Cvar_VariableString( "sys_cpustring" ), "PentiumIII" ) )
  {
   cpuid = 131;
  }
  else if ( !Q_stricmp( Cvar_VariableString( "sys_cpustring" ), "axp" ) )
  {
   cpuid = 133;
  }
  else
  {
   Com_Printf( "WARNING: unknown sys_cpustring '%s'\n", Cvar_VariableString( "sys_cpustring" ) );
   cpuid = 132;
  }
 }
 Cvar_SetValue( "sys_cpuid", cpuid );
 Com_Printf( "%s\n", Cvar_VariableString( "sys_cpustring" ) );

 Cvar_Set( "username", Sys_GetCurrentUser() );

 IN_Init();
}

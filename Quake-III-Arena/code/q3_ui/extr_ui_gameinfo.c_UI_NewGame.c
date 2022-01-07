
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int trap_Cvar_Set (char*,char*) ;

void UI_NewGame( void ) {
 trap_Cvar_Set( "g_spScores1", "" );
 trap_Cvar_Set( "g_spScores2", "" );
 trap_Cvar_Set( "g_spScores3", "" );
 trap_Cvar_Set( "g_spScores4", "" );
 trap_Cvar_Set( "g_spScores5", "" );
 trap_Cvar_Set( "g_spAwards", "" );
 trap_Cvar_Set( "g_spVideos", "" );
}

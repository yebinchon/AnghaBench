
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int videos ;
typedef int qboolean ;
typedef int key ;


 int Com_sprintf (char*,int,char*,int) ;
 int Info_SetValueForKey (char*,char*,int ) ;
 int Info_ValueForKey (char*,char*) ;
 int MAX_INFO_VALUE ;
 scalar_t__ atoi (int ) ;
 int qfalse ;
 int qtrue ;
 int trap_Cvar_Set (char*,char*) ;
 int trap_Cvar_VariableStringBuffer (char*,char*,int) ;
 int va (char*,int) ;

qboolean UI_ShowTierVideo( int tier ) {
 char key[16];
 char videos[MAX_INFO_VALUE];

 if( tier <= 0 ) {
  return qfalse;
 }

 trap_Cvar_VariableStringBuffer( "g_spVideos", videos, sizeof(videos) );

 Com_sprintf( key, sizeof(key), "tier%i", tier );
 if( atoi( Info_ValueForKey( videos, key ) ) ) {
  return qfalse;
 }

 Info_SetValueForKey( videos, key, va( "%i", 1 ) );
 trap_Cvar_Set( "g_spVideos", videos );

 return qtrue;
}

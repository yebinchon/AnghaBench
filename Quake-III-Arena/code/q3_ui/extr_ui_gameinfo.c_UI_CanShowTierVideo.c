
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int videos ;
typedef int qboolean ;
typedef int key ;
struct TYPE_2__ {scalar_t__ demoversion; } ;


 int Com_sprintf (char*,int,char*,int) ;
 int Info_ValueForKey (char*,char*) ;
 int MAX_INFO_VALUE ;
 scalar_t__ atoi (int ) ;
 int qfalse ;
 int qtrue ;
 int trap_Cvar_VariableStringBuffer (char*,char*,int) ;
 TYPE_1__ uis ;

qboolean UI_CanShowTierVideo( int tier ) {
 char key[16];
 char videos[MAX_INFO_VALUE];

 if( !tier ) {
  return qfalse;
 }

 if( uis.demoversion && tier != 8 ) {
  return qfalse;
 }

 trap_Cvar_VariableStringBuffer( "g_spVideos", videos, sizeof(videos) );

 Com_sprintf( key, sizeof(key), "tier%i", tier );
 if( atoi( Info_ValueForKey( videos, key ) ) ) {
  return qtrue;
 }

 return qfalse;
}

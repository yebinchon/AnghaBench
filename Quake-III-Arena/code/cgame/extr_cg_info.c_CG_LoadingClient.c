
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int personality ;
typedef int model ;
struct TYPE_2__ {scalar_t__ gametype; } ;


 char* CG_ConfigString (scalar_t__) ;
 int CG_LoadingString (char*) ;
 scalar_t__ CS_PLAYERS ;
 int Com_sprintf (char*,int,char*,char*,char*) ;
 char* DEFAULT_MODEL ;
 scalar_t__ GT_SINGLE_PLAYER ;
 int Info_ValueForKey (char const*,char*) ;
 size_t MAX_LOADING_PLAYER_ICONS ;
 int MAX_QPATH ;
 int Q_CleanStr (char*) ;
 int Q_strncpyz (char*,int ,int) ;
 char* Q_strrchr (char*,char) ;
 TYPE_1__ cgs ;
 size_t loadingPlayerIconCount ;
 scalar_t__* loadingPlayerIcons ;
 int qtrue ;
 scalar_t__ trap_R_RegisterShaderNoMip (char*) ;
 int trap_S_RegisterSound (int ,int ) ;
 int va (char*,char*) ;

void CG_LoadingClient( int clientNum ) {
 const char *info;
 char *skin;
 char personality[MAX_QPATH];
 char model[MAX_QPATH];
 char iconName[MAX_QPATH];

 info = CG_ConfigString( CS_PLAYERS + clientNum );

 if ( loadingPlayerIconCount < MAX_LOADING_PLAYER_ICONS ) {
  Q_strncpyz( model, Info_ValueForKey( info, "model" ), sizeof( model ) );
  skin = Q_strrchr( model, '/' );
  if ( skin ) {
   *skin++ = '\0';
  } else {
   skin = "default";
  }

  Com_sprintf( iconName, MAX_QPATH, "models/players/%s/icon_%s.tga", model, skin );

  loadingPlayerIcons[loadingPlayerIconCount] = trap_R_RegisterShaderNoMip( iconName );
  if ( !loadingPlayerIcons[loadingPlayerIconCount] ) {
   Com_sprintf( iconName, MAX_QPATH, "models/players/characters/%s/icon_%s.tga", model, skin );
   loadingPlayerIcons[loadingPlayerIconCount] = trap_R_RegisterShaderNoMip( iconName );
  }
  if ( !loadingPlayerIcons[loadingPlayerIconCount] ) {
   Com_sprintf( iconName, MAX_QPATH, "models/players/%s/icon_%s.tga", DEFAULT_MODEL, "default" );
   loadingPlayerIcons[loadingPlayerIconCount] = trap_R_RegisterShaderNoMip( iconName );
  }
  if ( loadingPlayerIcons[loadingPlayerIconCount] ) {
   loadingPlayerIconCount++;
  }
 }

 Q_strncpyz( personality, Info_ValueForKey( info, "n" ), sizeof(personality) );
 Q_CleanStr( personality );

 if( cgs.gametype == GT_SINGLE_PLAYER ) {
  trap_S_RegisterSound( va( "sound/player/announce/%s.wav", personality ), qtrue );
 }

 CG_LoadingString( personality );
}

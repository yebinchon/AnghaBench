
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void** levelCompletePic; void* levelFocusPic; void* levelSelectedPic; int * awardSounds; } ;


 int ART_ARROW ;
 int ART_ARROW_FOCUS ;
 int ART_BACK0 ;
 int ART_BACK1 ;
 int ART_CUSTOM0 ;
 int ART_CUSTOM1 ;
 int ART_FIGHT0 ;
 int ART_FIGHT1 ;
 int ART_LEVELFRAME_FOCUS ;
 int ART_LEVELFRAME_SELECTED ;
 int ART_MAP_COMPLETE1 ;
 int ART_MAP_COMPLETE2 ;
 int ART_MAP_COMPLETE3 ;
 int ART_MAP_COMPLETE4 ;
 int ART_MAP_COMPLETE5 ;
 int ART_MAP_UNKNOWN ;
 int ART_RESET0 ;
 int ART_RESET1 ;
 TYPE_1__ levelMenuInfo ;
 int qfalse ;
 void* trap_R_RegisterShaderNoMip (int ) ;
 int trap_S_RegisterSound (int ,int ) ;
 int * ui_medalPicNames ;
 int * ui_medalSounds ;

void UI_SPLevelMenu_Cache( void ) {
 int n;

 trap_R_RegisterShaderNoMip( ART_LEVELFRAME_FOCUS );
 trap_R_RegisterShaderNoMip( ART_LEVELFRAME_SELECTED );
 trap_R_RegisterShaderNoMip( ART_ARROW );
 trap_R_RegisterShaderNoMip( ART_ARROW_FOCUS );
 trap_R_RegisterShaderNoMip( ART_MAP_UNKNOWN );
 trap_R_RegisterShaderNoMip( ART_MAP_COMPLETE1 );
 trap_R_RegisterShaderNoMip( ART_MAP_COMPLETE2 );
 trap_R_RegisterShaderNoMip( ART_MAP_COMPLETE3 );
 trap_R_RegisterShaderNoMip( ART_MAP_COMPLETE4 );
 trap_R_RegisterShaderNoMip( ART_MAP_COMPLETE5 );
 trap_R_RegisterShaderNoMip( ART_BACK0 );
 trap_R_RegisterShaderNoMip( ART_BACK1 );
 trap_R_RegisterShaderNoMip( ART_FIGHT0 );
 trap_R_RegisterShaderNoMip( ART_FIGHT1 );
 trap_R_RegisterShaderNoMip( ART_RESET0 );
 trap_R_RegisterShaderNoMip( ART_RESET1 );
 trap_R_RegisterShaderNoMip( ART_CUSTOM0 );
 trap_R_RegisterShaderNoMip( ART_CUSTOM1 );

 for( n = 0; n < 6; n++ ) {
  trap_R_RegisterShaderNoMip( ui_medalPicNames[n] );
  levelMenuInfo.awardSounds[n] = trap_S_RegisterSound( ui_medalSounds[n], qfalse );
 }

 levelMenuInfo.levelSelectedPic = trap_R_RegisterShaderNoMip( ART_LEVELFRAME_SELECTED );
 levelMenuInfo.levelFocusPic = trap_R_RegisterShaderNoMip( ART_LEVELFRAME_FOCUS );
 levelMenuInfo.levelCompletePic[0] = trap_R_RegisterShaderNoMip( ART_MAP_COMPLETE1 );
 levelMenuInfo.levelCompletePic[1] = trap_R_RegisterShaderNoMip( ART_MAP_COMPLETE2 );
 levelMenuInfo.levelCompletePic[2] = trap_R_RegisterShaderNoMip( ART_MAP_COMPLETE3 );
 levelMenuInfo.levelCompletePic[3] = trap_R_RegisterShaderNoMip( ART_MAP_COMPLETE4 );
 levelMenuInfo.levelCompletePic[4] = trap_R_RegisterShaderNoMip( ART_MAP_COMPLETE5 );
}

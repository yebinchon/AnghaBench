
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void** crosshairShader; void* sliderThumb; void* sliderBar; void* scrollBarThumb; void* scrollBarArrowRight; void* scrollBarArrowLeft; void* scrollBarArrowUp; void* scrollBarArrowDown; void* scrollBar; void** fxPic; void* fxBasePic; void* gradientBar; } ;
struct TYPE_5__ {TYPE_1__ Assets; } ;
struct TYPE_6__ {int newHighScoreSound; TYPE_2__ uiDC; } ;


 int ART_FX_BASE ;
 int ART_FX_BLUE ;
 int ART_FX_CYAN ;
 int ART_FX_GREEN ;
 int ART_FX_RED ;
 int ART_FX_TEAL ;
 int ART_FX_WHITE ;
 int ART_FX_YELLOW ;
 int ASSET_GRADIENTBAR ;
 int ASSET_SCROLLBAR ;
 int ASSET_SCROLLBAR_ARROWDOWN ;
 int ASSET_SCROLLBAR_ARROWLEFT ;
 int ASSET_SCROLLBAR_ARROWRIGHT ;
 int ASSET_SCROLLBAR_ARROWUP ;
 int ASSET_SCROLL_THUMB ;
 int ASSET_SLIDER_BAR ;
 int ASSET_SLIDER_THUMB ;
 int NUM_CROSSHAIRS ;
 int qfalse ;
 void* trap_R_RegisterShaderNoMip (int ) ;
 int trap_S_RegisterSound (char*,int ) ;
 TYPE_3__ uiInfo ;
 int va (char*,char) ;

void AssetCache() {
 int n;




 uiInfo.uiDC.Assets.gradientBar = trap_R_RegisterShaderNoMip( ASSET_GRADIENTBAR );
 uiInfo.uiDC.Assets.fxBasePic = trap_R_RegisterShaderNoMip( ART_FX_BASE );
 uiInfo.uiDC.Assets.fxPic[0] = trap_R_RegisterShaderNoMip( ART_FX_RED );
 uiInfo.uiDC.Assets.fxPic[1] = trap_R_RegisterShaderNoMip( ART_FX_YELLOW );
 uiInfo.uiDC.Assets.fxPic[2] = trap_R_RegisterShaderNoMip( ART_FX_GREEN );
 uiInfo.uiDC.Assets.fxPic[3] = trap_R_RegisterShaderNoMip( ART_FX_TEAL );
 uiInfo.uiDC.Assets.fxPic[4] = trap_R_RegisterShaderNoMip( ART_FX_BLUE );
 uiInfo.uiDC.Assets.fxPic[5] = trap_R_RegisterShaderNoMip( ART_FX_CYAN );
 uiInfo.uiDC.Assets.fxPic[6] = trap_R_RegisterShaderNoMip( ART_FX_WHITE );
 uiInfo.uiDC.Assets.scrollBar = trap_R_RegisterShaderNoMip( ASSET_SCROLLBAR );
 uiInfo.uiDC.Assets.scrollBarArrowDown = trap_R_RegisterShaderNoMip( ASSET_SCROLLBAR_ARROWDOWN );
 uiInfo.uiDC.Assets.scrollBarArrowUp = trap_R_RegisterShaderNoMip( ASSET_SCROLLBAR_ARROWUP );
 uiInfo.uiDC.Assets.scrollBarArrowLeft = trap_R_RegisterShaderNoMip( ASSET_SCROLLBAR_ARROWLEFT );
 uiInfo.uiDC.Assets.scrollBarArrowRight = trap_R_RegisterShaderNoMip( ASSET_SCROLLBAR_ARROWRIGHT );
 uiInfo.uiDC.Assets.scrollBarThumb = trap_R_RegisterShaderNoMip( ASSET_SCROLL_THUMB );
 uiInfo.uiDC.Assets.sliderBar = trap_R_RegisterShaderNoMip( ASSET_SLIDER_BAR );
 uiInfo.uiDC.Assets.sliderThumb = trap_R_RegisterShaderNoMip( ASSET_SLIDER_THUMB );

 for( n = 0; n < NUM_CROSSHAIRS; n++ ) {
  uiInfo.uiDC.Assets.crosshairShader[n] = trap_R_RegisterShaderNoMip( va("gfx/2d/crosshair%c", 'a' + n ) );
 }

 uiInfo.newHighScoreSound = trap_S_RegisterSound("sound/feedback/voc_newhighscore.wav", qfalse);
}

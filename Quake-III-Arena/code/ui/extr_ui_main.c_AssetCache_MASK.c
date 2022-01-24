#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void** crosshairShader; void* sliderThumb; void* sliderBar; void* scrollBarThumb; void* scrollBarArrowRight; void* scrollBarArrowLeft; void* scrollBarArrowUp; void* scrollBarArrowDown; void* scrollBar; void** fxPic; void* fxBasePic; void* gradientBar; } ;
struct TYPE_5__ {TYPE_1__ Assets; } ;
struct TYPE_6__ {int /*<<< orphan*/  newHighScoreSound; TYPE_2__ uiDC; } ;

/* Variables and functions */
 int /*<<< orphan*/  ART_FX_BASE ; 
 int /*<<< orphan*/  ART_FX_BLUE ; 
 int /*<<< orphan*/  ART_FX_CYAN ; 
 int /*<<< orphan*/  ART_FX_GREEN ; 
 int /*<<< orphan*/  ART_FX_RED ; 
 int /*<<< orphan*/  ART_FX_TEAL ; 
 int /*<<< orphan*/  ART_FX_WHITE ; 
 int /*<<< orphan*/  ART_FX_YELLOW ; 
 int /*<<< orphan*/  ASSET_GRADIENTBAR ; 
 int /*<<< orphan*/  ASSET_SCROLLBAR ; 
 int /*<<< orphan*/  ASSET_SCROLLBAR_ARROWDOWN ; 
 int /*<<< orphan*/  ASSET_SCROLLBAR_ARROWLEFT ; 
 int /*<<< orphan*/  ASSET_SCROLLBAR_ARROWRIGHT ; 
 int /*<<< orphan*/  ASSET_SCROLLBAR_ARROWUP ; 
 int /*<<< orphan*/  ASSET_SCROLL_THUMB ; 
 int /*<<< orphan*/  ASSET_SLIDER_BAR ; 
 int /*<<< orphan*/  ASSET_SLIDER_THUMB ; 
 int NUM_CROSSHAIRS ; 
 int /*<<< orphan*/  qfalse ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 TYPE_3__ uiInfo ; 
 int /*<<< orphan*/  FUNC2 (char*,char) ; 

void FUNC3() {
	int n;
	//if (Assets.textFont == NULL) {
	//}
	//Assets.background = trap_R_RegisterShaderNoMip( ASSET_BACKGROUND );
	//Com_Printf("Menu Size: %i bytes\n", sizeof(Menus));
	uiInfo.uiDC.Assets.gradientBar = FUNC0( ASSET_GRADIENTBAR );
	uiInfo.uiDC.Assets.fxBasePic = FUNC0( ART_FX_BASE );
	uiInfo.uiDC.Assets.fxPic[0] = FUNC0( ART_FX_RED );
	uiInfo.uiDC.Assets.fxPic[1] = FUNC0( ART_FX_YELLOW );
	uiInfo.uiDC.Assets.fxPic[2] = FUNC0( ART_FX_GREEN );
	uiInfo.uiDC.Assets.fxPic[3] = FUNC0( ART_FX_TEAL );
	uiInfo.uiDC.Assets.fxPic[4] = FUNC0( ART_FX_BLUE );
	uiInfo.uiDC.Assets.fxPic[5] = FUNC0( ART_FX_CYAN );
	uiInfo.uiDC.Assets.fxPic[6] = FUNC0( ART_FX_WHITE );
	uiInfo.uiDC.Assets.scrollBar = FUNC0( ASSET_SCROLLBAR );
	uiInfo.uiDC.Assets.scrollBarArrowDown = FUNC0( ASSET_SCROLLBAR_ARROWDOWN );
	uiInfo.uiDC.Assets.scrollBarArrowUp = FUNC0( ASSET_SCROLLBAR_ARROWUP );
	uiInfo.uiDC.Assets.scrollBarArrowLeft = FUNC0( ASSET_SCROLLBAR_ARROWLEFT );
	uiInfo.uiDC.Assets.scrollBarArrowRight = FUNC0( ASSET_SCROLLBAR_ARROWRIGHT );
	uiInfo.uiDC.Assets.scrollBarThumb = FUNC0( ASSET_SCROLL_THUMB );
	uiInfo.uiDC.Assets.sliderBar = FUNC0( ASSET_SLIDER_BAR );
	uiInfo.uiDC.Assets.sliderThumb = FUNC0( ASSET_SLIDER_THUMB );

	for( n = 0; n < NUM_CROSSHAIRS; n++ ) {
		uiInfo.uiDC.Assets.crosshairShader[n] = FUNC0( FUNC2("gfx/2d/crosshair%c", 'a' + n ) );
	}

	uiInfo.newHighScoreSound = FUNC1("sound/feedback/voc_newhighscore.wav", qfalse);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  f32 ;
struct TYPE_3__ {int efbHeight; int xfbHeight; int fbWidth; scalar_t__ xfbMode; int viHeight; int /*<<< orphan*/  field_rendering; int /*<<< orphan*/  vfilter; int /*<<< orphan*/  sample_pattern; int /*<<< orphan*/  aa; } ;
typedef  int /*<<< orphan*/  Mtx44 ;
typedef  TYPE_1__ GXRModeObj ;
typedef  int /*<<< orphan*/  GXColor ;

/* Variables and functions */
 scalar_t__ BLACK ; 
 int /*<<< orphan*/  GX_DISABLE ; 
 int /*<<< orphan*/  GX_ENABLE ; 
 int GX_FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GX_ORTHOGRAPHIC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (float,float,int,int,float,float) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ VI_XFBMODE_SF ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int,int,int,int,int) ; 

__attribute__((used)) static void FUNC13(GXRModeObj *tvmode, int vfilter_enabled)
{
  Mtx44 p;
  f32 yScale = FUNC1(tvmode->efbHeight, tvmode->xfbHeight);
  u16 xfbHeight = FUNC7(yScale);
  u16 xfbWidth  = FUNC11(tvmode->fbWidth);  

  FUNC3((GXColor)BLACK,0x00ffffff);
  FUNC10(0.0F, 0.0F, tvmode->fbWidth, tvmode->efbHeight, 0.0F, 1.0F);
  FUNC9(0, 0, tvmode->fbWidth, tvmode->efbHeight);
  FUNC6(0, 0, tvmode->fbWidth, tvmode->efbHeight);
  FUNC5(xfbWidth, xfbHeight);
  FUNC4(tvmode->aa, tvmode->sample_pattern, (tvmode->xfbMode == VI_XFBMODE_SF) ? GX_FALSE : vfilter_enabled, tvmode->vfilter);
  FUNC8(tvmode->field_rendering, ((tvmode->viHeight == 2 * tvmode->xfbHeight) ? GX_ENABLE : GX_DISABLE));
  FUNC12(p, tvmode->efbHeight/2, -(tvmode->efbHeight/2), -(tvmode->fbWidth/2), tvmode->fbWidth/2, 100, 1000);
  FUNC2(p, GX_ORTHOGRAPHIC);
  FUNC0();
}
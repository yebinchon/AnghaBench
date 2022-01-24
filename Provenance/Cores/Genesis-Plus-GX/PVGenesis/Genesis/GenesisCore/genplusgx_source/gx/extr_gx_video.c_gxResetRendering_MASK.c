#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  s16 ;

/* Variables and functions */
 int /*<<< orphan*/  GX_BL_INVSRCALPHA ; 
 int /*<<< orphan*/  GX_BL_SRCALPHA ; 
 int /*<<< orphan*/  GX_BM_BLEND ; 
 int /*<<< orphan*/  GX_BM_NONE ; 
 int /*<<< orphan*/  GX_CLR_RGBA ; 
 int /*<<< orphan*/  GX_COLOR0A0 ; 
 int /*<<< orphan*/  GX_COLORNULL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GX_DIRECT ; 
 int /*<<< orphan*/  GX_F32 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  GX_INDEX8 ; 
 int /*<<< orphan*/  GX_LO_CLEAR ; 
 int /*<<< orphan*/  GX_MODULATE ; 
 int /*<<< orphan*/  GX_POS_XY ; 
 int /*<<< orphan*/  GX_POS_XYZ ; 
 int /*<<< orphan*/  GX_REPLACE ; 
 int /*<<< orphan*/  GX_RGBA8 ; 
 int /*<<< orphan*/  GX_S16 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GX_TEVSTAGE0 ; 
 int /*<<< orphan*/  GX_TEXCOORD0 ; 
 int /*<<< orphan*/  GX_TEXMAP0 ; 
 int /*<<< orphan*/  GX_TEX_ST ; 
 int /*<<< orphan*/  GX_VA_CLR0 ; 
 int /*<<< orphan*/  GX_VA_POS ; 
 int /*<<< orphan*/  GX_VA_TEX0 ; 
 int /*<<< orphan*/  GX_VTXFMT0 ; 
 int /*<<< orphan*/  square ; 

__attribute__((used)) static void FUNC10(u8 type)
{
  FUNC0();

  if (type)
  {
    /* uses direct positionning, alpha blending & color channel (menu rendering) */
    FUNC3(GX_BM_BLEND,GX_BL_SRCALPHA,GX_BL_INVSRCALPHA,GX_LO_CLEAR);
    FUNC8(GX_VTXFMT0, GX_VA_POS, GX_POS_XY, GX_S16, 0);
    FUNC8(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
    FUNC8(GX_VTXFMT0, GX_VA_TEX0, GX_TEX_ST, GX_F32, 0);
    FUNC9(GX_VA_POS, GX_DIRECT);
    FUNC9(GX_VA_TEX0, GX_DIRECT);
    FUNC9 (GX_VA_CLR0, GX_DIRECT);
    /* 
       Color.out = Color.rasterized*Color.texture
       Alpha.out = Alpha.rasterized*Alpha.texture 
    */
    FUNC6 (GX_TEVSTAGE0, GX_MODULATE);
    FUNC7(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
    FUNC5(1);
    FUNC4(1);
  }
  else
  {
    /* uses array positionning, no alpha blending, no color channel (video emulation) */
    FUNC3(GX_BM_NONE,GX_BL_SRCALPHA,GX_BL_INVSRCALPHA,GX_LO_CLEAR);
    FUNC8(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_S16, 0);
    FUNC8(GX_VTXFMT0, GX_VA_TEX0, GX_TEX_ST, GX_F32, 0);
    FUNC9(GX_VA_POS, GX_INDEX8);
    FUNC9(GX_VA_TEX0, GX_DIRECT);
    FUNC2(GX_VA_POS, square, 3 * sizeof (s16));
    /* 
       Color.out = Color.texture
       Alpha.out = Alpha.texture 
    */
    FUNC6 (GX_TEVSTAGE0, GX_REPLACE);
    FUNC7(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLORNULL);
    FUNC5(1);
    FUNC4(0);
  }

  FUNC1();
}
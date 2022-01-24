#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int s32 ;
struct TYPE_5__ {int cell_width; int cell_height; } ;
struct TYPE_4__ {int /*<<< orphan*/  b; int /*<<< orphan*/  g; int /*<<< orphan*/  r; } ;
typedef  int /*<<< orphan*/  GXTexObj ;
typedef  TYPE_1__ GXColor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GX_CLAMP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  GX_FALSE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  GX_QUADS ; 
 int /*<<< orphan*/  GX_TEXMAP0 ; 
 int /*<<< orphan*/  GX_TF_I4 ; 
 int /*<<< orphan*/  FUNC9 (double,double) ; 
 int /*<<< orphan*/  GX_VTXFMT0 ; 
 int /*<<< orphan*/  FUNC10 (unsigned char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* fontHeader ; 
 int /*<<< orphan*/  fontTexture ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12(unsigned char c, int xpos, int ypos, int size, GXColor color)
{
  /* reintialize texture object */
  GXTexObj texobj;
  FUNC5(&texobj, fontTexture, fontHeader->cell_width, fontHeader->cell_height, GX_TF_I4, GX_CLAMP, GX_CLAMP, GX_FALSE);
  FUNC7(&texobj, GX_TEXMAP0);

  /* reinitialize font texture data */
  FUNC11(fontTexture,0,fontHeader->cell_width * fontHeader->cell_height / 2);
  FUNC10(c,fontTexture,0,fontHeader->cell_width/2);
  FUNC0(fontTexture, fontHeader->cell_width * fontHeader->cell_height / 2);
  FUNC6();

  /* adjust texture width */
  s32 width = (fontHeader->cell_width * size) / fontHeader->cell_height;

  /* GX rendering */
  FUNC1(GX_QUADS, GX_VTXFMT0, 4);
  FUNC8(xpos, ypos - size);
  FUNC2(color.r, color.g, color.b, 0xff);
  FUNC9(0.0, 0.0);
  FUNC8(xpos + width, ypos - size);
  FUNC2(color.r, color.g, color.b, 0xff);
  FUNC9(1.0, 0.0);
  FUNC8(xpos + width, ypos);
  FUNC2(color.r, color.g, color.b, 0xff);
  FUNC9(1.0, 1.0);
  FUNC8(xpos, ypos);
  FUNC2(color.r, color.g, color.b, 0xff);
  FUNC9(0.0, 1.0);
  FUNC4();
  FUNC3();
}
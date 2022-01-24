#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int s32 ;
struct TYPE_6__ {int width; int height; int /*<<< orphan*/  data; int /*<<< orphan*/  format; } ;
typedef  TYPE_2__ gx_texture ;
struct TYPE_5__ {int w; int x; int h; int y; } ;
struct TYPE_7__ {TYPE_1__ viewport; } ;
typedef  int /*<<< orphan*/  GXTexObj ;
typedef  int /*<<< orphan*/  GXColor ;

/* Variables and functions */
 scalar_t__ BLACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GX_CLAMP ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  GX_FALSE ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  GX_QUADS ; 
 int /*<<< orphan*/  FUNC12 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  GX_TEXMAP0 ; 
 int /*<<< orphan*/  GX_TF_RGB565 ; 
 int /*<<< orphan*/  GX_TF_RGBA8 ; 
 int /*<<< orphan*/  GX_TRUE ; 
 int /*<<< orphan*/  FUNC14 (double,double) ; 
 int /*<<< orphan*/  GX_VTXFMT0 ; 
 TYPE_4__ bitmap ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  screenshot ; 
 int /*<<< orphan*/  texturemem ; 
 int /*<<< orphan*/  vheight ; 
 int /*<<< orphan*/  vwidth ; 

void FUNC16(gx_texture *texture)
{
  /* retrieve gamescreen texture */
  GXTexObj texobj;
  FUNC7(&texobj, texturemem, vwidth, vheight, GX_TF_RGB565, GX_CLAMP, GX_CLAMP, GX_FALSE);
  FUNC9(&texobj, GX_TEXMAP0);
  FUNC8();

  /* scale texture to EFB width */
  s32 w = ((bitmap.viewport.w + 2*bitmap.viewport.x) * 640) / bitmap.viewport.w;
  s32 h = (bitmap.viewport.h + 2*bitmap.viewport.y) * 2;
  s32 x = -w/2;
  s32 y = -(240+ 2*bitmap.viewport.y);

  /* black out surrounding area if necessary (Game Gear without borders) */
  if ((w < 640) || (h < 480))
  {
    FUNC15(0, 0, 640, 480, 255, (GXColor)BLACK);
  }

  /* draw textured quad */
  FUNC1(GX_QUADS, GX_VTXFMT0, 4);
  FUNC11(x,y+h);
  FUNC2(0xff,0xff,0xff,0xff);
  FUNC14(0.0, 1.0);
  FUNC11(x+w,y+h);
  FUNC2(0xff,0xff,0xff,0xff);
  FUNC14(1.0, 1.0);
  FUNC11(x+w,y);
  FUNC2(0xff,0xff,0xff,0xff);
  FUNC14(1.0, 0.0);
  FUNC11(x,y);
  FUNC2(0xff,0xff,0xff,0xff);
  FUNC14(0.0, 0.0);
  FUNC5();

  /* copy EFB to texture */
  texture->format = GX_TF_RGBA8;
  texture->width = 320;
  texture->height = bitmap.viewport.h;
  texture->data = screenshot;
  FUNC13(0, 0, texture->width * 2, texture->height * 2);
  FUNC12(texture->width, texture->height, texture->format, GX_TRUE);
  FUNC4();
  FUNC3(texture->data, GX_TRUE);
  FUNC6();

  /* wait for copy operation to finish */
  /* GX_PixModeSync is only useful if GX_ command follows */
  /* we use dummy GX commands to stall CPU execution */
  FUNC10();
  FUNC9(&texobj, GX_TEXMAP0);
  FUNC8();
  FUNC6();
  FUNC0(texture->data, texture->width * texture->height * 4);
}
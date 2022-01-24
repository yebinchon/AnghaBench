#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int width; int height; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ gx_texture ;
struct TYPE_8__ {int x; int w; int y; int h; } ;
struct TYPE_12__ {TYPE_1__ viewport; } ;
struct TYPE_11__ {int aspect; int /*<<< orphan*/  bilinear; } ;
struct TYPE_10__ {int fbWidth; int viWidth; int efbHeight; int viHeight; } ;
typedef  int /*<<< orphan*/  GXTexObj ;

/* Variables and functions */
 int /*<<< orphan*/  GX_ANISO_1 ; 
 int /*<<< orphan*/  GX_ANISO_4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GX_CLAMP ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  GX_FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,double,double,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  GX_LINEAR ; 
 int /*<<< orphan*/  GX_LIN_MIP_LIN ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GX_NEAR ; 
 int /*<<< orphan*/  GX_NEAR_MIP_NEAR ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  GX_QUADS ; 
 int /*<<< orphan*/  GX_TEXMAP0 ; 
 int /*<<< orphan*/  GX_TF_RGB565 ; 
 int /*<<< orphan*/  GX_TF_RGBA8 ; 
 int /*<<< orphan*/  GX_TRUE ; 
 int /*<<< orphan*/  FUNC8 (double,double) ; 
 int /*<<< orphan*/  GX_VTXFMT0 ; 
 TYPE_7__ bitmap ; 
 TYPE_6__ config ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 TYPE_3__* rmode ; 
 int* square ; 
 int /*<<< orphan*/  texturemem ; 
 int vheight ; 
 int vwidth ; 

__attribute__((used)) static void FUNC10(gx_texture *texture_l, gx_texture *texture_r)
{
  /* adjust texture dimensions to XFB->VI scaling */
  int w = (texture_l->width * rmode->fbWidth) / (rmode->viWidth);
  int h = (texture_l->height * rmode->efbHeight) / (rmode->viHeight);

  /* Aspect correction for widescreen TV */
  if (config.aspect & 2) w = (w * 3) / 4;

  /* EFB scale & shift */
  int xwidth = square[3] - square[9];
  int ywidth = square[4] - square[10];

  /* adjust texture coordinates to EFB */
  int xl = ((bitmap.viewport.x * xwidth) / vwidth) + square[9] + 8;
  int xr = (((bitmap.viewport.x + bitmap.viewport.w) * xwidth) / vwidth) + square[9] - 8 - w;
  int y = (((bitmap.viewport.y + bitmap.viewport.h - 4) * ywidth) / vheight) + square[10] - h;

  /* reset GX rendering */
  FUNC9(1);

  /* load left screen texture */
  GXTexObj texObj;
  FUNC3(&texObj, texture_l->data, texture_l->width, texture_l->height, GX_TF_RGBA8, GX_CLAMP, GX_CLAMP, GX_FALSE);
  FUNC4(&texObj,GX_LINEAR,GX_LIN_MIP_LIN,0.0,10.0,0.0,GX_FALSE,GX_TRUE,GX_ANISO_4);
  FUNC6(&texObj, GX_TEXMAP0);
  FUNC5();

  /* Draw textured quad */
  FUNC0(GX_QUADS, GX_VTXFMT0, 4);
  FUNC7(xl,y+h);
  FUNC1(0xff,0xff,0xff,0xff);
  FUNC8(0.0, 1.0);
  FUNC7(xl+w,y+h);
  FUNC1(0xff,0xff,0xff,0xff);
  FUNC8(1.0, 1.0);
  FUNC7(xl+w,y);
  FUNC1(0xff,0xff,0xff,0xff);
  FUNC8(1.0, 0.0);
  FUNC7(xl,y);
  FUNC1(0xff,0xff,0xff,0xff);
  FUNC8(0.0, 0.0);
  FUNC2();

  /* load right screen texture */
  FUNC3(&texObj, texture_r->data, texture_r->width, texture_r->height, GX_TF_RGBA8, GX_CLAMP, GX_CLAMP, GX_FALSE);
  FUNC4(&texObj,GX_LINEAR,GX_LIN_MIP_LIN,0.0,10.0,0.0,GX_FALSE,GX_TRUE,GX_ANISO_4);
  FUNC6(&texObj, GX_TEXMAP0);
  FUNC5();

  /* Draw textured quad */
  FUNC0(GX_QUADS, GX_VTXFMT0, 4);
  FUNC7(xr,y+h);
  FUNC1(0xff,0xff,0xff,0xff);
  FUNC8(0.0, 1.0);
  FUNC7(xr+w,y+h);
  FUNC1(0xff,0xff,0xff,0xff);
  FUNC8(1.0, 1.0);
  FUNC7(xr+w,y);
  FUNC1(0xff,0xff,0xff,0xff);
  FUNC8(1.0, 0.0);
  FUNC7(xr,y);
  FUNC1(0xff,0xff,0xff,0xff);
  FUNC8(0.0, 0.0);
  FUNC2();

  /* restore GX rendering */
  FUNC9(0);

  /* restore texture object */
  GXTexObj texobj;
  FUNC3(&texobj, texturemem, vwidth, vheight, GX_TF_RGB565, GX_CLAMP, GX_CLAMP, GX_FALSE);
  if (!config.bilinear)
  {
    FUNC4(&texobj,GX_NEAR,GX_NEAR_MIP_NEAR,0.0,10.0,0.0,GX_FALSE,GX_FALSE,GX_ANISO_1);
  }
  FUNC6(&texobj, GX_TEXMAP0);
  FUNC5();
}
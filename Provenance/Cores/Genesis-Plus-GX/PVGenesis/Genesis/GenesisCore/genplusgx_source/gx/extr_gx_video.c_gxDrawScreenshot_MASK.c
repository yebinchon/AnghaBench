#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int s32 ;
struct TYPE_4__ {int xshift; int yshift; } ;
struct TYPE_3__ {int fbWidth; int viWidth; int efbHeight; int viHeight; } ;
typedef  int /*<<< orphan*/  GXTexObj ;
typedef  int /*<<< orphan*/  GXColor ;

/* Variables and functions */
 scalar_t__ BLACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GX_CLAMP ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  GX_FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  GX_QUADS ; 
 int /*<<< orphan*/  GX_TEXMAP0 ; 
 int /*<<< orphan*/  GX_TF_RGB565 ; 
 int /*<<< orphan*/  FUNC8 (double,double) ; 
 int /*<<< orphan*/  GX_VTXFMT0 ; 
 TYPE_2__ config ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int*,int*) ; 
 int /*<<< orphan*/  rmode ; 
 int /*<<< orphan*/  texturemem ; 
 int /*<<< orphan*/  vheight ; 
 TYPE_1__* vmode ; 
 int /*<<< orphan*/  vwidth ; 

void FUNC11(u8 alpha)
{
  if (!rmode) return;

  /* get current game screen texture */
  GXTexObj texobj;
  FUNC4(&texobj, texturemem, vwidth, vheight, GX_TF_RGB565, GX_CLAMP, GX_CLAMP, GX_FALSE);
  FUNC6(&texobj, GX_TEXMAP0);
  FUNC5();

  /* get current aspect ratio */
  int xscale,yscale;
  FUNC10(&xscale, &yscale);

  /* adjust horizontal scaling */
  xscale = (xscale * vmode->fbWidth) / vmode->viWidth;

  /* adjust screen position */
  int xshift = (config.xshift * vmode->fbWidth) / vmode->viWidth;
  int yshift = (config.yshift * vmode->efbHeight) / vmode->viHeight;

  /* set vertices position & size */
  s32 x = xshift - xscale;
  s32 y = yshift - (yscale * 2);
  s32 w = xscale * 2;
  s32 h = yscale * 4;

  /* black out surrounding area if necessary (Game Gear without borders) */
  if ((w < 640) || (h < 480))
  {
    FUNC9(0, 0, 640, 480, 255, (GXColor)BLACK);
  }

  /* draw textured quad */
  FUNC0(GX_QUADS, GX_VTXFMT0, 4);
  FUNC7(x,y+h);
  FUNC1(0xff,0xff,0xff,alpha);
  FUNC8(0.0, 1.0);
  FUNC7(x+w,y+h);
  FUNC1(0xff,0xff,0xff,alpha);
  FUNC8(1.0, 1.0);
  FUNC7(x+w,y);
  FUNC1(0xff,0xff,0xff,alpha);
  FUNC8(1.0, 0.0);
  FUNC7(x,y);
  FUNC1(0xff,0xff,0xff,alpha);
  FUNC8(0.0, 0.0);
  FUNC3();
  FUNC2();
}
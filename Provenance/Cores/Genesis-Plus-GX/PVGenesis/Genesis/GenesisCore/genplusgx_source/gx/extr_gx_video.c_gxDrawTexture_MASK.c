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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ s32 ;
struct TYPE_4__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ data; } ;
typedef  TYPE_1__ gx_texture ;
struct TYPE_5__ {int fbWidth; int efbHeight; } ;
typedef  int /*<<< orphan*/  GXTexObj ;

/* Variables and functions */
 int /*<<< orphan*/  GX_ANISO_4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GX_CLAMP ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  GX_FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,double,double,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  GX_LINEAR ; 
 int /*<<< orphan*/  GX_LIN_MIP_LIN ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  GX_QUADS ; 
 int /*<<< orphan*/  GX_TEXMAP0 ; 
 int /*<<< orphan*/  GX_TF_RGBA8 ; 
 int /*<<< orphan*/  GX_TRUE ; 
 int /*<<< orphan*/  FUNC9 (double,double) ; 
 int /*<<< orphan*/  GX_VTXFMT0 ; 
 TYPE_2__* vmode ; 

void FUNC10(gx_texture *texture, s32 x, s32 y, s32 w, s32 h, u8 alpha)
{
  if (!texture) return;
  if (texture->data)
  {
    /* load texture object */
    GXTexObj texObj;
    FUNC4(&texObj, texture->data, texture->width, texture->height, GX_TF_RGBA8, GX_CLAMP, GX_CLAMP, GX_FALSE);
    FUNC5(&texObj,GX_LINEAR,GX_LIN_MIP_LIN,0.0,10.0,0.0,GX_FALSE,GX_TRUE,GX_ANISO_4); /* does this really change anything ? */
    FUNC7(&texObj, GX_TEXMAP0);
    FUNC6();

    /* vertex coordinate */
    x -= (vmode->fbWidth/2);
    y -= (vmode->efbHeight/2);

    /* draw textured quad */
    FUNC0(GX_QUADS, GX_VTXFMT0, 4);
    FUNC8(x,y+h);
    FUNC1(0xff,0xff,0xff,alpha);
    FUNC9(0.0, 1.0);
    FUNC8(x+w,y+h);
    FUNC1(0xff,0xff,0xff,alpha);
    FUNC9(1.0, 1.0);
    FUNC8(x+w,y);
    FUNC1(0xff,0xff,0xff,alpha);
    FUNC9(1.0, 0.0);
    FUNC8(x,y);
    FUNC1(0xff,0xff,0xff,alpha);
    FUNC9(0.0, 0.0);
    FUNC3();
    FUNC2();
  }
}
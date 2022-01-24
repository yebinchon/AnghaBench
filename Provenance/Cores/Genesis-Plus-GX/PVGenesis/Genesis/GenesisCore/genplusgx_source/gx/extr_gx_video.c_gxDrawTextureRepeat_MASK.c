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
struct TYPE_4__ {scalar_t__ height; scalar_t__ width; scalar_t__ data; } ;
typedef  TYPE_1__ gx_texture ;
typedef  double f32 ;
struct TYPE_5__ {int fbWidth; int efbHeight; } ;
typedef  int /*<<< orphan*/  GXTexObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  GX_FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  GX_QUADS ; 
 int /*<<< orphan*/  GX_REPEAT ; 
 int /*<<< orphan*/  GX_TEXMAP0 ; 
 int /*<<< orphan*/  GX_TF_RGBA8 ; 
 int /*<<< orphan*/  FUNC8 (double,double) ; 
 int /*<<< orphan*/  GX_VTXFMT0 ; 
 TYPE_2__* vmode ; 

void FUNC9(gx_texture *texture, s32 x, s32 y, s32 w, s32 h, u8 alpha)
{
  if (!texture) return;
  if (texture->data)
  {
    /* load texture object */
    GXTexObj texObj;
    FUNC4(&texObj, texture->data, texture->width, texture->height, GX_TF_RGBA8, GX_REPEAT, GX_REPEAT, GX_FALSE);
    FUNC6(&texObj, GX_TEXMAP0);
    FUNC5();

    /* vertex coordinate */
    x -= (vmode->fbWidth/2);
    y -= (vmode->efbHeight/2);

    /* texture coordinates */
    f32 s = (f32)w / (f32)texture->width;
    f32 t = (f32)h / (f32)texture->height;

    /* draw textured quad */
    FUNC0(GX_QUADS, GX_VTXFMT0, 4);
    FUNC7(x,y+h);
    FUNC1(0xff,0xff,0xff,alpha);
    FUNC8(0.0, t);
    FUNC7(x+w,y+h);
    FUNC1(0xff,0xff,0xff,alpha);
    FUNC8(s, t);
    FUNC7(x+w,y);
    FUNC1(0xff,0xff,0xff,alpha);
    FUNC8(s, 0.0);
    FUNC7(x,y);
    FUNC1(0xff,0xff,0xff,alpha);
    FUNC8(0.0, 0.0);
    FUNC3();
    FUNC2();
  }
}
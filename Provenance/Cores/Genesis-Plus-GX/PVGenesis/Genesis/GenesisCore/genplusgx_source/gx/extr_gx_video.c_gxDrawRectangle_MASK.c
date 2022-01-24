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
struct TYPE_5__ {int fbWidth; int efbHeight; } ;
struct TYPE_4__ {int /*<<< orphan*/  b; int /*<<< orphan*/  g; int /*<<< orphan*/  r; } ;
typedef  TYPE_1__ GXColor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GX_DIRECT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  GX_MODULATE ; 
 int /*<<< orphan*/  GX_NONE ; 
 int /*<<< orphan*/  GX_PASSCLR ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  GX_QUADS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GX_TEVSTAGE0 ; 
 int /*<<< orphan*/  GX_VA_TEX0 ; 
 int /*<<< orphan*/  GX_VTXFMT0 ; 
 TYPE_2__* vmode ; 

void FUNC8(s32 x, s32 y, s32 w, s32 h, u8 alpha, GXColor color)
{
  /* GX only use Color channel for rendering */
  FUNC6 (GX_TEVSTAGE0, GX_PASSCLR);
  FUNC7 (GX_VA_TEX0, GX_NONE);
  FUNC4();

  /* vertex coordinate */
  x -= (vmode->fbWidth/2);
  y -= (vmode->efbHeight/2);

  /* draw colored quad */
  FUNC0(GX_QUADS, GX_VTXFMT0, 4);
  FUNC5(x,y+h);
  FUNC1(color.r,color.g,color.b,alpha);
  FUNC5(x+w,y+h);
  FUNC1(color.r,color.g,color.b,alpha);
  FUNC5(x+w,y);
  FUNC1(color.r,color.g,color.b,alpha);
  FUNC5(x,y);
  FUNC1(color.r,color.g,color.b,alpha);
  FUNC3();
  FUNC2();

  /* restore GX rendering */
  FUNC7(GX_VA_TEX0, GX_DIRECT);
  FUNC6 (GX_TEVSTAGE0, GX_MODULATE);
  FUNC4();
}
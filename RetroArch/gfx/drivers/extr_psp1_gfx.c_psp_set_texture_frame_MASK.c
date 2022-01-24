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
struct TYPE_3__ {int /*<<< orphan*/  frame_coords; int /*<<< orphan*/  frame; int /*<<< orphan*/  dList; } ;
struct TYPE_4__ {TYPE_1__ menu; int /*<<< orphan*/  main_dList; } ;
typedef  TYPE_2__ psp1_video_t ;

/* Variables and functions */
 int /*<<< orphan*/  GU_ADD ; 
 int /*<<< orphan*/  GU_BLEND ; 
 int /*<<< orphan*/  GU_DIRECT ; 
 int /*<<< orphan*/  GU_FALSE ; 
 int /*<<< orphan*/  GU_FIX ; 
 int /*<<< orphan*/  GU_LINEAR ; 
 int /*<<< orphan*/  GU_ONE_MINUS_SRC_ALPHA ; 
 int /*<<< orphan*/  GU_PSM_4444 ; 
 int /*<<< orphan*/  GU_SEND ; 
 int /*<<< orphan*/  GU_SPRITES ; 
 int /*<<< orphan*/  GU_SRC_ALPHA ; 
 int /*<<< orphan*/  GU_TCC_RGB ; 
 int GU_TEXTURE_32BITF ; 
 int /*<<< orphan*/  GU_TFX_REPLACE ; 
 int GU_TRANSFORM_2D ; 
 int GU_VERTEX_32BITF ; 
 int /*<<< orphan*/  PSP_FRAME_VERTEX_COUNT ; 
 int /*<<< orphan*/  SCEGU_SCR_HEIGHT ; 
 int /*<<< orphan*/  SCEGU_SCR_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (void const*,unsigned int) ; 

__attribute__((used)) static void FUNC15(void *data, const void *frame, bool rgb32,
                               unsigned width, unsigned height, float alpha)
{
   psp1_video_t *psp = (psp1_video_t*)data;

   (void) rgb32;
   (void) alpha;

#ifdef DEBUG
   /* psp->menu.frame buffer size is (480 * 272)*2 Bytes */
   retro_assert((width*height) < (480 * 272));
#endif

   FUNC1(psp->menu.frame_coords, 0, 0,
         SCEGU_SCR_WIDTH, SCEGU_SCR_HEIGHT, 0);
   FUNC2(psp->menu.frame_coords, width, height);

   FUNC14(frame, width * height * 2);

   FUNC9(GU_DIRECT, psp->main_dList);
   FUNC5(GU_PSM_4444, 0, 0, width, height, width,
         (void*)frame, 0, 0, width, psp->menu.frame);
   FUNC8();

   FUNC9(GU_SEND, psp->menu.dList);
   FUNC13(GU_PSM_4444, 0, 0, GU_FALSE);
   FUNC11(GU_TFX_REPLACE, GU_TCC_RGB);
   FUNC10(GU_LINEAR, GU_LINEAR);
   FUNC12(0, FUNC0(width), FUNC0(height), width, psp->menu.frame);
   FUNC7(GU_BLEND);

#if 0
   /* default blending */
   sceGuBlendFunc(GU_ADD, GU_SRC_ALPHA, GU_ONE_MINUS_SRC_ALPHA, 0, 0);
#endif
   FUNC4(GU_ADD, GU_FIX, GU_FIX, 0xF0F0F0F0, 0x0F0F0F0F);
;
   FUNC6(GU_SPRITES, GU_TEXTURE_32BITF | GU_VERTEX_32BITF |
         GU_TRANSFORM_2D, PSP_FRAME_VERTEX_COUNT, NULL,
         psp->menu.frame_coords);
   FUNC8();

}